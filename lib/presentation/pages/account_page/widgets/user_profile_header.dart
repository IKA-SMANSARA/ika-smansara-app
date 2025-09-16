import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';

class UserProfileHeader extends StatelessWidget {
  final UserProfileDocument userData;

  const UserProfileHeader({
    super.key,
    required this.userData,
  });

  @override
  Widget build(BuildContext context) {
    final isAdmin = userData.isAdmin ?? false;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF104993),
            Color(0xFF1a5fb4),
          ],
        ),
      ),
      child: Column(
        children: [
          // Profile Picture
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              boxShadow: [
                 BoxShadow(
                   color: Colors.black.withValues(alpha: 0.1),
                   blurRadius: 8,
                   offset: const Offset(0, 4),
                 ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: userData.photoProfileUrl != null
                  ? CachedNetworkImage(
                      imageUrl: userData.photoProfileUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    )
                   : Container(
                       color: Colors.white.withValues(alpha: 0.2),
                       child: const Icon(
                         Icons.person,
                         size: 40,
                         color: Colors.white,
                       ),
                     ),
            ),
          ),

          const SizedBox(height: 12),

          // User Name
          Text(
            userData.name ?? 'Nama Pengguna',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 6),

          // User Role/Status
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
               color: isAdmin
                   ? const Color(0xFFD52014).withValues(alpha: 0.2)
                   : Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                 color: Colors.white.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Text(
              isAdmin ? 'ADMIN' : 'ANGGOTA',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ),

          const SizedBox(height: 6),

          // Additional Info
          if (userData.email != null)
            Text(
              userData.email!,
               style: TextStyle(
                 color: Colors.white.withValues(alpha: 0.8),
                 fontSize: 13,
               ),
              textAlign: TextAlign.center,
            ),

          const SizedBox(height: 2),

          // Alumni status if applicable
          if (userData.isAlumni == true)
            Text(
              'Alumni ${userData.graduateYear ?? ''}',
               style: TextStyle(
                 color: Colors.white.withValues(alpha: 0.8),
                 fontSize: 11,
               ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}