.class public final synthetic Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/telephony/satellite/SemSatelliteSignalStrength;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;

    iput p2, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$3:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;

    iget v1, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$2:I

    iget-object p0, p0, Landroid/telephony/SemTelephonyRegistryManager$1$$ExternalSyntheticLambda1;->f$3:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-static {v0, v1, v2, p0}, Landroid/telephony/SemTelephonyRegistryManager$1;->lambda$onSemSatelliteSignalStrengthChanged$1(Landroid/telephony/SemTelephonyManager$SemSatelliteStateListener;IILandroid/telephony/satellite/SemSatelliteSignalStrength;)V

    return-void
.end method
