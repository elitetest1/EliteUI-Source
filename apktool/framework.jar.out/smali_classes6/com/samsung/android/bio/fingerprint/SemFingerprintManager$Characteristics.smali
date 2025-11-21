.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristics"
.end annotation


# static fields
.field public static final whitelist SENSOR_POSITION_HOME_KEY:I = 0x1

.field public static final whitelist SENSOR_POSITION_IN_DISPLAY:I = 0x2

.field public static final whitelist SENSOR_POSITION_POWER_KEY:I = 0x4

.field public static final whitelist SENSOR_POSITION_REAR:I = 0x3

.field public static final whitelist SENSOR_TYPE_CAPACITANCE:I = 0x1

.field public static final whitelist SENSOR_TYPE_OPTICAL:I = 0x2

.field public static final whitelist SENSOR_TYPE_ULTRASONIC:I = 0x3

.field private static final blacklist mConfig:Ljava/lang/String; = "google_touch_display_optical,settings=3,aod_transition_animation"


# instance fields
.field private final blacklist mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method


# virtual methods
.method public whitelist getMaxFingerprintCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    move-result p0

    return p0
.end method

.method public whitelist getSensorAreaInDisplay()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSensorPosition()I
    .locals 0

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result p0

    return p0
.end method

.method public whitelist getSensorType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
