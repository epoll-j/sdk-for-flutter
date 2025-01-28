part of '../../models.dart';

/// MFA Recovery Codes
class MfaRecoveryCodes implements Model {
    /// Recovery codes.
    final List<String> recoveryCodes;

    MfaRecoveryCodes({
        required this.recoveryCodes,
    });

    factory MfaRecoveryCodes.fromMap(Map<String, dynamic> map) {
        return MfaRecoveryCodes(
            recoveryCodes: List<String>.from(map['recoveryCodes']?.map((x) => x.toString()) ?? []),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "recoveryCodes": recoveryCodes,
        };
    }
}