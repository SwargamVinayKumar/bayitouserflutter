import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/custom_color.dart';

class VipTicketView extends StatelessWidget {
  final String? bookingId;
  final String? tableNumber;
  final String? seatType;

  const VipTicketView({
    super.key,
    this.bookingId,
    this.tableNumber,
    this.seatType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: CustomPaint(
        painter: _TicketPainter(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              // VIP Logo
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/images/VIP.png", // Add your VIP logo asset
                  width: 70,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 14),

              // Divider line (perforation)
              Container(
                width: 1,
                height: 45,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: CustomColors.secondary.withOpacity(0.25),
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),

              // Text section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "VIP EXPERIENCE",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFFB8860B),
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      seatType != null && seatType!.isNotEmpty
                          ? "Table $tableNumber · $seatType"
                          : "Premium Reserved Seating",
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.secondary.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),

              // Crown icon
              Icon(
                Icons.workspace_premium_rounded,
                color: const Color(0xFFD4AF37),
                size: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TicketPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFFFFF8E1),
          Color(0xFFFFFDE7),
          Color(0xFFFFF8E1),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final borderPaint = Paint()
      ..color = const Color(0xFFD4AF37)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    const double notchRadius = 10.0;
    const double cornerRadius = 14.0;

    final path = Path();

    // Top-left corner
    path.moveTo(cornerRadius, 0);
    // Top edge
    path.lineTo(size.width - cornerRadius, 0);
    // Top-right corner
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    // Right edge
    path.lineTo(size.width, size.height / 2 - notchRadius);
    // Right notch (half circle inward)
    path.arcToPoint(
      Offset(size.width, size.height / 2 + notchRadius),
      radius: const Radius.circular(notchRadius),
      clockwise: false,
    );
    // Right edge bottom
    path.lineTo(size.width, size.height - cornerRadius);
    // Bottom-right corner
    path.quadraticBezierTo(
        size.width, size.height, size.width - cornerRadius, size.height);
    // Bottom edge
    path.lineTo(cornerRadius, size.height);
    // Bottom-left corner
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);
    // Left edge
    path.lineTo(0, size.height / 2 + notchRadius);
    // Left notch
    path.arcToPoint(
      Offset(0, size.height / 2 - notchRadius),
      radius: const Radius.circular(notchRadius),
      clockwise: false,
    );
    // Left edge top
    path.lineTo(0, cornerRadius);
    // Top-left corner
    path.quadraticBezierTo(0, 0, cornerRadius, 0);
    path.close();

    // Shadow
    canvas.drawShadow(path, const Color(0xFFD4AF37).withOpacity(0.3), 6, true);

    // Fill
    canvas.drawPath(path, paint);

    // Border
    canvas.drawPath(path, borderPaint);

    // Dashed perforation line in the middle (vertical)
    final dashPaint = Paint()
      ..color = const Color(0xFFD4AF37).withOpacity(0.5)
      ..strokeWidth = 1.2;

    const double dashHeight = 4.0;
    const double dashSpace = 3.0;
    double startY = size.height / 2 + 14;

    while (startY < size.height - 14) {
      canvas.drawLine(
        Offset(105, startY), // X position of perforation
        Offset(105, startY + dashHeight),
        dashPaint,
      );
      startY += dashHeight + dashSpace;
    }

    startY = 14;
    while (startY < size.height / 2 - 14) {
      canvas.drawLine(
        Offset(105, startY),
        Offset(105, startY + dashHeight),
        dashPaint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}