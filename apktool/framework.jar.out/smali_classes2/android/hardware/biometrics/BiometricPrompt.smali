.class public Landroid/hardware/biometrics/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;,
        Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResultType;,
        Landroid/hardware/biometrics/BiometricPrompt$Builder;,
        Landroid/hardware/biometrics/BiometricPrompt$SemPrivilegedFlag;,
        Landroid/hardware/biometrics/BiometricPrompt$SemBiometricType;,
        Landroid/hardware/biometrics/BiometricPrompt$DismissedReason;
    }
.end annotation


# static fields
.field public static final whitelist AUTHENTICATION_RESULT_TYPE_BIOMETRIC:I = 0x2

.field public static final whitelist AUTHENTICATION_RESULT_TYPE_DEVICE_CREDENTIAL:I = 0x1

.field private static final blacklist DEBUG:Z

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRMED:I = 0x1

.field public static final blacklist DISMISSED_REASON_BIOMETRIC_CONFIRM_NOT_REQUIRED:I = 0x4

.field public static final blacklist DISMISSED_REASON_CONTENT_VIEW_MORE_OPTIONS:I = 0x8

.field public static final blacklist DISMISSED_REASON_CREDENTIAL_CONFIRMED:I = 0x7

.field public static final blacklist DISMISSED_REASON_ERROR:I = 0x5

.field public static final blacklist DISMISSED_REASON_ERROR_NO_WM:I = 0x9

.field public static final greylist-max-o DISMISSED_REASON_NEGATIVE:I = 0x2

.field public static final blacklist DISMISSED_REASON_SERVER_REQUESTED:I = 0x6

.field public static final greylist-max-o DISMISSED_REASON_USER_CANCEL:I = 0x3

.field public static final greylist-max-o HIDE_DIALOG_DELAY:I = 0x7d0

.field static final blacklist MAX_LOGO_DESCRIPTION_CHARACTER_NUMBER:I = 0x1e

.field public static final blacklist SEM_FLAG_BIOMETRIC_IDENITIFIER_ID:I = 0x2

.field public static final blacklist SEM_FLAG_CHECK_ENROLLED_BIOMETRIC:I = 0x1

.field public static final blacklist SEM_PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x4

.field public static final blacklist SEM_PRIVILEGED_FLAG_EXCLUSIVE_AUTHENTICATION:I = 0x8

.field public static final blacklist SEM_PRIVILEGED_FLAG_KNOX_INTERNAL:I = 0x20

.field public static final blacklist SEM_PRIVILEGED_FLAG_KNOX_ONLY_CONFIRM_BIOMETRIC:I = 0x80

.field public static final blacklist SEM_PRIVILEGED_FLAG_KNOX_TWO_FACTOR:I = 0x40

.field public static final blacklist SEM_PRIVILEGED_FLAG_USING_FIDO:I = 0x10

.field public static final whitelist SEM_TYPE_DEVICE_CUSTOM_SCAN:I = 0x8

.field public static final whitelist SEM_TYPE_FACE:I = 0x2

.field public static final whitelist SEM_TYPE_FINGERPRINT:I = 0x1

.field public static final whitelist SEM_TYPE_IRIS:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "BiometricPrompt"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final blacklist mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private final blacklist mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIsPromptShowing:Z

.field private final greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private final blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private final blacklist mService:Landroid/hardware/biometrics/IAuthService;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$AmOKJWAP3rm6xIAx9UacYo4XJXo(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Hibrh_rd9OmPbAUQ4I1QdZsKDCA(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentViewMoreOptionsButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPromptShowing(Landroid/hardware/biometrics/BiometricPrompt;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/biometrics/BiometricPrompt;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/biometrics/BiometricPrompt;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCredentialAllowed(I)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->isCredentialAllowed(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/hardware/biometrics/BiometricPrompt;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iput-object p4, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iput-object p5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;Landroid/hardware/biometrics/BiometricPrompt-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;)V

    return-void
.end method

.method private blacklist authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J
    .locals 14

    move-object/from16 v1, p5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    const-string v2, "BiometricPrompt"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-eqz v0, :cond_0

    const-string v0, "CryptoObject operation ID does not match argument; setting field to null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    :cond_0
    const-wide/16 v3, -0x1

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Authentication already canceled"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    :cond_1
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget-boolean v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const v5, 0x104024b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-wide v3

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/hardware/biometrics/PromptInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5, v0}, Landroid/hardware/biometrics/PromptInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v5}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xf

    invoke-virtual {v5, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    :cond_4
    :goto_0
    move-object v13, v5

    invoke-direct {p0, v13}, Landroid/hardware/biometrics/BiometricPrompt;->semSetExtraInfo(Landroid/hardware/biometrics/PromptInfo;)V

    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    iget-object v7, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object v11, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBiometricServiceReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-wide v8, p1

    move/from16 v10, p6

    invoke-interface/range {v6 .. v13}, Landroid/hardware/biometrics/IAuthService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v5

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, v5, v6}, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;-><init>(Landroid/hardware/biometrics/BiometricPrompt;J)V

    move-object/from16 v7, p3

    invoke-virtual {v7, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mIsPromptShowing:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v5

    :catch_0
    move-exception v0

    const-string v5, "Remote exception while authenticating"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-wide v3
.end method

.method private blacklist authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .locals 9

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-wide v3, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mService:Landroid/hardware/biometrics/IAuthService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/hardware/biometrics/IAuthService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "BiometricPrompt"

    const-string p2, "Unable to cancel authentication"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static blacklist convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static blacklist isCredentialAllowed(I)Z
    .locals 1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$authenticateInternal$0(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic blacklist lambda$authenticateInternal$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 1

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const v0, 0x104024e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist semSetExtraInfo(Landroid/hardware/biometrics/PromptInfo;)V
    .locals 4

    const-string v0, "semSetExtraInfo: "

    const-string v1, "BiometricPrompt"

    :try_start_0
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/hardware/biometrics/PromptInfo;->semSetDisplayId(I)V

    :try_start_1
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/hardware/biometrics/PromptInfo;->semSetTaskId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    const/16 v1, 0x161

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xf

    :cond_1
    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Strong biometrics supported with crypto"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an executor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a cancellation signal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a crypto object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    const/16 v1, 0x161

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an executor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a cancellation signal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J
    .locals 8

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v2, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an executor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a cancellation signal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .locals 7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an executor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a cancellation signal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getAllowedAuthenticators()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    return p0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getContentView()Landroid/hardware/biometrics/PromptContentView;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLogoBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLogoDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getLogoDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLogoRes()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result p0

    return p0
.end method

.method public whitelist getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result p0

    return p0
.end method

.method public whitelist isConfirmationRequired()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result p0

    return p0
.end method

.method public whitelist semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V
    .locals 6

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p5}, Landroid/hardware/biometrics/PromptInfo;->semSetChallengeData([B)V

    :cond_0
    iget-object p5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateInternal(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an executor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply a cancellation signal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist shouldUseDefaultSubtitle()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result p0

    return p0
.end method

.method public blacklist shouldUseDefaultTitle()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result p0

    return p0
.end method
