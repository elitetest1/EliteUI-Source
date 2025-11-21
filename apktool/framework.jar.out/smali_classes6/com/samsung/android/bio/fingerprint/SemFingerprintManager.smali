.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$PrivilegedFlag;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$ExtraKey;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$FingerprintAcquired;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$FingerprintError;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_KEY_ALLOW_AUTH_EVEN_IF_ENCRYPTED_OR_LOCKDOWN:Ljava/lang/String; = "EXTRA_KEY_ALLOW_EVEN_IF_ENCRYPTED_OR_LOCKDOWN"

.field public static final blacklist EXTRA_KEY_AUTH_FLAG:Ljava/lang/String; = "EXTRA_KEY_AUTH_FLAG"

.field public static final blacklist EXTRA_KEY_DISPLAY_ID:Ljava/lang/String; = "EXTRA_KEY_DISPLAY_ID"

.field public static final blacklist EXTRA_KEY_ICON_COLOR:Ljava/lang/String; = "EXTRA_KEY_ICON_COLOR"

.field public static final blacklist EXTRA_KEY_ICON_CONTAINER_COLOR:Ljava/lang/String; = "EXTRA_KEY_ICON_CONTAINER_COLOR"

.field public static final whitelist EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final blacklist EXTRA_KEY_TASK_ID:Ljava/lang/String; = "EXTRA_KEY_TASK_ID"

.field public static final whitelist FEATURE_GESTURE:I = 0x1

.field public static final whitelist FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final whitelist FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final whitelist FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final blacklist FINGERPRINT_ACQUIRED_VENDOR:I = 0x6

.field public static final whitelist FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final whitelist FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final whitelist FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:I = 0x3e9

.field public static final whitelist FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final whitelist FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final whitelist FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field private static final blacklist MSG_ACQUIRED:I = 0x64

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final blacklist MSG_ERROR:I = 0x67

.field public static final whitelist PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final whitelist PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final whitelist PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:I = 0x10

.field public static final blacklist PRIVILEGED_FLAG_NO_VIBRATION_EFFECT:I = 0x8

.field public static final blacklist PRIVILEGED_FLAG_RECEIVE_VENDOR_EVENT:I = 0x2

.field public static final blacklist PRIVILEGED_FLAG_USE_KEYGUARD_ICON:I = 0x20

.field public static final blacklist PRIVILEGED_FLAG_USE_SIDE_FPS_INDICATOR:I = 0x40

.field private static final blacklist TAG:Ljava/lang/String; = "SemFingerprintManager"


# instance fields
.field private blacklist mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

.field private final blacklist mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final blacklist mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$T9cuL_oSTC9K0-Epq5iU7X7-UG4(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->lambda$authenticate$0(J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WAcUO9H6_ABAfOpbufNf2g_HVwI(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->lambda$handleDefaultError$1(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAcquiredResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager-IA;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager;->semGetService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance p1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Remote exception while canceling authentication : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemFingerprintManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must have "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist convertAcquiredCode(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
    .locals 2

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getMaxTemplateNumberFromSPF()I
    .locals 6

    const-string v0, "google_touch_display_optical,settings=3,aod_transition_animation"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string/jumbo v4, "settings="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v3

    const-string v4, "SemFingerprintManager"

    const-string v5, "getMaxTemplateNumberFromSPF: failed to read sensor config"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public static blacklist getProductFeatureValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string p0, "google_touch_display_optical,settings=3,aod_transition_animation"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must have com.samsung.android.permission.BIOMETRICS_PRIVILEGED permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$authenticate$0(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->cancelAuthentication(J)V

    return-void
.end method

.method private synthetic blacklist lambda$handleDefaultError$1(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist sendAcquiredResult(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->convertAcquiredCode(I)I

    move-result v1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    if-nez v0, :cond_0

    move p1, p2

    :cond_0
    move v1, p1

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {p0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;ILandroid/os/Bundle;)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "fidoResult"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->-$$Nest$msetFidoResultData(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;[B)V

    :cond_0
    new-instance p2, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;

    iget-object p3, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {p0, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V

    :cond_1
    return-void
.end method

.method private blacklist sendErrorResult(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static blacklist setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setExtraInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, "EXTRA_KEY_DISPLAY_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    const-string v0, "EXTRA_KEY_TASK_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager-IA;)V

    iput-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager-IA;)V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 11

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "SemFingerprintManager"

    if-eqz v0, :cond_0

    const-string p1, "authentication : already canceled"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_1

    const-string p1, "authentication : Service is NULL"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void

    :cond_1
    move-object v0, p4

    :try_start_0
    invoke-direct {p0, p4}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->useHandler(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->-$$Nest$mgetOpId(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;)J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_2
    move-wide v6, v2

    :goto_0
    if-nez p6, :cond_3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object v10, p1

    goto :goto_1

    :cond_3
    move-object/from16 v10, p6

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v10}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    new-instance p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    move/from16 v0, p5

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object v9

    iget-object v4, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v5, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface/range {v4 .. v10}, Landroid/hardware/fingerprint/IFingerprintService;->semAuthenticate(Landroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/Bundle;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x67

    invoke-virtual {p1, v6, v3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    new-instance p1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v4, v5}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;J)V

    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string v0, "Remote exception while authenticating: "

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an authentication callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
    .locals 2

    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager-IA;)V

    return-object v0
.end method

.method public whitelist getEnrolledFingerprintNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->checkPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public blacklist hasDisabledFingerprints()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasEnrolledFingerprints()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    return p0
.end method

.method public blacklist hasEnrolledFingerprints(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    return p0
.end method

.method public whitelist hasFeature(I)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result p0

    return p0
.end method
