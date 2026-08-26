import 'dart:async';
import 'package:flutter/material.dart';
import 'custom_network_image.dart';

class ImageCarouselComponent extends StatefulWidget {
  final List<String> imageUrls;
  final double height;
  final double width;
  final Duration autoScrollDuration;
  final BoxFit fit;
  final double borderRadius;

  const ImageCarouselComponent({
    super.key,
    required this.imageUrls,
    this.height = 200,
    this.width = double.infinity,
    this.autoScrollDuration = const Duration(seconds: 3),
    this.fit = BoxFit.cover,
    this.borderRadius = 12,
  });

  @override
  State<ImageCarouselComponent> createState() => _ImageCarouselComponentState();
}

class _ImageCarouselComponentState extends State<ImageCarouselComponent> {
  late final PageController _pageController;
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    if (widget.imageUrls.length > 1) {
      _startTimer();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(widget.autoScrollDuration, (timer) {
      if (_currentPage < widget.imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.imageUrls.isEmpty) {
      return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: const Icon(Icons.image_not_supported, color: Colors.grey),
      );
    }

    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return CustomNetworkImage(
                imageUrl: widget.imageUrls[index],
                fit: widget.fit,
                width: widget.width,
                height: widget.height,
                borderRadius: widget.borderRadius,
              );
            },
          ),
          if (widget.imageUrls.length > 1)
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  widget.imageUrls.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: _currentPage == index ? 20 : 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
