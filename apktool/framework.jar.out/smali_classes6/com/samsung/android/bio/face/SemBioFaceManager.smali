.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_AUTH_COORDINATE_H:Ljava/lang/String; = "auth_coordinate_h"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_TOKEN:Ljava/lang/String; = "auth_coordinate_token"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_W:Ljava/lang/String; = "auth_coordinate_w"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_X:Ljava/lang/String; = "auth_coordinate_x"

.field public static final blacklist BUNDLE_AUTH_COORDINATE_Y:Ljava/lang/String; = "auth_coordinate_y"

.field public static final blacklist BUNDLE_PREVIEW_ON_TOP:Ljava/lang/String; = "preview_on_top"

.field public static final blacklist BUNDLE_SET_SECURITY_LEVEL:Ljava/lang/String; = "security_level"

.field public static final blacklist BUNDLE_SET_TIMEOUT:Ljava/lang/String; = "set_timeout"

.field public static final blacklist BUNDLE_SKIP_WAKELOCK:Ljava/lang/String; = "skip_wakelock"

.field public static final blacklist BUNDLE_SUPPORT_AUTH_COORDINATE:Ljava/lang/String; = "support_auth_coordinate"

.field private static final blacklist DEBUG:Z

.field public static final blacklist EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final blacklist FACE_ACQUIRED_FABK:I = 0x186a5

.field public static final whitelist FACE_ACQUIRED_FAKE:I = 0x4

.field public static final blacklist FACE_ACQUIRED_FALI_FATO:I = 0x186a2

.field public static final blacklist FACE_ACQUIRED_FALQ_FMLQ:I = 0x186a3

.field public static final blacklist FACE_ACQUIRED_FAMK:I = 0x186a1

.field public static final blacklist FACE_ACQUIRED_FAMO:I = 0x186a6

.field public static final blacklist FACE_ACQUIRED_FANM_FMNM:I = 0x186a4

.field public static final whitelist FACE_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FACE_ACQUIRED_INVALID:I = 0x2

.field public static final whitelist FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final whitelist FACE_ACQUIRED_MISALIGNED:I = 0x7

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM:I = 0x3f5

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_LEFT:I = 0x3f4

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_RIGHT:I = 0x3f6

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_LEFT:I = 0x3f1

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_MIDDLE:I = 0x3f2

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_RIGHT:I = 0x3f3

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP:I = 0x3ef

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_LEFT:I = 0x3ee

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_RIGHT:I = 0x3f0

.field public static final blacklist FACE_ACQUIRED_ON_MASK:I = 0x3f9

.field public static final blacklist FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final blacklist FACE_ACQUIRED_PROXIMITY_ALERT:I = 0x3e9

.field public static final blacklist FACE_ACQUIRED_REVERSE_ORIENTATION:I = 0x3ea

.field public static final blacklist FACE_ACQUIRED_SURFACE_UPDATED:I = 0x7d1

.field public static final whitelist FACE_ACQUIRED_TOO_BIG:I = 0x5

.field public static final blacklist FACE_ACQUIRED_TOO_DARK:I = 0x3f7

.field public static final whitelist FACE_ACQUIRED_TOO_SMALL:I = 0x6

.field public static final blacklist FACE_ACQUIRED_WITH_GLASSES:I = 0x3f8

.field public static final blacklist FACE_ERROR_CAMERA_ACCESS_SETTING_OFF:I = 0x186a3

.field public static final whitelist FACE_ERROR_CAMERA_FAILURE:I = 0x2713

.field public static final whitelist FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x2715

.field public static final whitelist FACE_ERROR_CANCELED:I = 0x5

.field public static final blacklist FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final blacklist FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final whitelist FACE_ERROR_LOCKOUT:I = 0x2711

.field public static final whitelist FACE_ERROR_LOCKOUT_PERMANENT:I = 0x2712

.field public static final whitelist FACE_ERROR_NO_SPACE:I = 0x4

.field public static final blacklist FACE_ERROR_ON_MASK:I = 0x3ee

.field public static final blacklist FACE_ERROR_PPP_TIMEOUT:I = 0x3ed

.field public static final blacklist FACE_ERROR_SESSION_CLOSED:I = 0x3ef

.field public static final blacklist FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final whitelist FACE_ERROR_TIMEOUT:I = 0x3

.field public static final blacklist FACE_ERROR_TOO_DARK:I = 0x186a1

.field public static final blacklist FACE_ERROR_TOO_DARK_TO_ENROLL:I = 0x186a2

.field public static final whitelist FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final blacklist FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final blacklist FACE_OK:I = 0x0

.field public static final blacklist FLAG_ENROLL_WITHOUT_TOKEN:I = 0x1

.field public static final blacklist IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

.field private static final blacklist MSG_ACQUIRED:I = 0x65

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist PKG_NAME_DESKTOP_KEYGUARD:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final blacklist PKG_NAME_KEYGUARD:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final blacklist PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final blacklist PRIVILEGED_FLAG_USE_SETTING_FOR_SECURITY_LEVEL:I = 0x2

.field public static final blacklist SECURITY_LEVEL_CONVENIENCE:I = 0x3

.field public static final blacklist SECURITY_LEVEL_NONE:I = 0x0

.field public static final blacklist SECURITY_LEVEL_STRONG:I = 0x1

.field public static final blacklist SECURITY_LEVEL_WEAK:I = 0x2

.field public static final blacklist SEM_FACE_GET_TA_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemBioFaceManager"


# instance fields
.field private blacklist mAuthRequestId:J

.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private blacklist mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$museHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthRequestId:J

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    return-void
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSepMappedAcquiredInfo(II)I
    .locals 8

    const/16 v0, 0x3f1

    const/16 v1, 0x3f3

    const/16 v2, 0x3f5

    const/16 v3, 0x3ef

    const/16 v4, 0x3f7

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x7

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSepMappedAcquiredInfo: No data, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemBioFaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_0
    const/16 v5, 0x3e9

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_1
    const p0, 0x186a6

    return p0

    :pswitch_2
    const p0, 0x186a5

    return p0

    :pswitch_3
    const p0, 0x186a4

    return p0

    :pswitch_4
    const p0, 0x186a3

    return p0

    :pswitch_5
    const p0, 0x186a2

    return p0

    :pswitch_6
    const p0, 0x186a1

    return p0

    :pswitch_7
    const/16 p0, 0x3f9

    return p0

    :pswitch_8
    const/16 p0, 0x3f8

    return p0

    :pswitch_9
    return v4

    :pswitch_a
    const/16 p0, 0x3f6

    return p0

    :pswitch_b
    return v2

    :pswitch_c
    const/16 p0, 0x3f4

    return p0

    :pswitch_d
    return v1

    :pswitch_e
    return v0

    :pswitch_f
    const/16 p0, 0x3f0

    return p0

    :pswitch_10
    return v3

    :pswitch_11
    const/16 p0, 0x3ee

    return p0

    :pswitch_12
    const/4 p0, 0x4

    return p0

    :cond_0
    return v5

    :pswitch_13
    return v6

    :goto_0
    :pswitch_14
    return p0

    :pswitch_15
    return v5

    :pswitch_16
    return v7

    :pswitch_17
    return p1

    :pswitch_18
    const/4 p0, 0x1

    return p0

    :pswitch_19
    return v7

    :pswitch_1a
    return v5

    :pswitch_1b
    return v0

    :pswitch_1c
    return v1

    :pswitch_1d
    return v2

    :pswitch_1e
    return v3

    :pswitch_1f
    const/4 p0, 0x6

    return p0

    :pswitch_20
    const/4 p0, 0x5

    return p0

    :pswitch_21
    return v4

    :pswitch_22
    return v6

    :pswitch_23
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ed
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f3
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x186a1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist getSepMappedError(II)I
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSepMappedError: No data, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemBioFaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    const/16 p0, 0x2712

    return p0

    :pswitch_6
    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    return p0

    :pswitch_7
    const p0, 0x186a3

    return p0

    :pswitch_8
    const p0, 0x186a2

    return p0

    :pswitch_9
    const p0, 0x186a1

    return p0

    :pswitch_a
    const/16 p0, 0x3ef

    return p0

    :pswitch_b
    const/16 p0, 0x3ee

    return p0

    :pswitch_c
    const/16 p0, 0x3ed

    return p0

    :pswitch_d
    const/16 p0, 0x2715

    return p0

    :pswitch_e
    const/16 p0, 0x2713

    return p0

    :pswitch_f
    return v2

    :pswitch_10
    const/16 p0, 0x3ec

    return p0

    :pswitch_11
    const/16 p0, 0x2711

    return p0

    :pswitch_12
    return v2

    :pswitch_13
    const/4 p0, 0x5

    return p0

    :pswitch_14
    const/4 p0, 0x4

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    :pswitch_16
    return v2

    :pswitch_17
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x186a1
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist isKeyguard(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.systemui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.desktopsystemui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist sendAcquiredResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method private blacklist sendErrorResult(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static blacklist setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "DISPLAY_TYPE"

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setExtraInfo: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemBioFaceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager-IA;)V

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist authenticate(Landroid/os/CancellationSignal;Landroid/os/Handler;ILandroid/view/Surface;[BLcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    iget-object p8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {p8}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result p8

    if-eqz p8, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public whitelist authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 10

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string p1, "enroll() : this is not used."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string p1, "enroll() : this is not used"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getEnrolledFaces(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetEnrolledFaces(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSecurityLevel()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSecurityLevel(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public blacklist getSecurityLevel(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isKeyguard(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hGetSecurityLevel(Z)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public blacklist getTaVersionCode()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hasDisabledFaces()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasEnrolledFaces()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasEnrolledFaces(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->hasEnrolledTemplates(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isHardwareDetected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->-$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mFaceManagerCompat:Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->isHardwareDetected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist postEnroll()I
    .locals 1

    const-string p0, "SemBioFaceManager"

    const-string/jumbo v0, "postEnroll() : this is not used."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist preEnroll()J
    .locals 2

    const-string p0, "SemBioFaceManager"

    const-string/jumbo v0, "preEnroll() : this is not used"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string/jumbo p1, "preEnroll() : this is not used."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public blacklist remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string/jumbo p1, "remove() : this is not used"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string/jumbo p1, "remove() : this is not used."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist rename(IILjava/lang/String;)V
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string/jumbo p1, "rename() : this is not used"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist resetAuthenticationTimeout()Z
    .locals 1

    const-string p0, "SemBioFaceManager"

    const-string/jumbo v0, "resetAuthenticationTimeout() : this is not used"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist resume()V
    .locals 0

    return-void
.end method

.method public blacklist setActiveUser(I)V
    .locals 0

    const-string p0, "SemBioFaceManager"

    const-string/jumbo p1, "setActiveUser() : this is not used"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
