.class public Landroid/hardware/face/FaceAuthenticateOptions;
.super Ljava/lang/Object;
.source "FaceAuthenticateOptions.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticateOptions;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceAuthenticateOptions$Builder;,
        Landroid/hardware/face/FaceAuthenticateOptions$AuthenticateReason;
    }
.end annotation


# static fields
.field public static final blacklist AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:I = 0x4

.field public static final blacklist AUTHENTICATE_REASON_ASSISTANT_VISIBLE:I = 0x3

.field public static final blacklist AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED:I = 0x5

.field public static final blacklist AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED:I = 0x6

.field public static final blacklist AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED:I = 0x7

.field public static final blacklist AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN:I = 0x2

.field public static final blacklist AUTHENTICATE_REASON_QS_EXPANDED:I = 0x8

.field public static final blacklist AUTHENTICATE_REASON_STARTED_WAKING_UP:I = 0x1

.field public static final blacklist AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER:I = 0x9

.field public static final blacklist AUTHENTICATE_REASON_UDFPS_POINTER_DOWN:I = 0xa

.field public static final blacklist AUTHENTICATE_REASON_UNKNOWN:I

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceAuthenticateOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mAuthenticateReason:I

.field private final blacklist mDisplayState:I

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private final blacklist mUserId:I

.field private final blacklist mWakeReason:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAttributionTag()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultAuthenticateReason()I
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultAuthenticateReason()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultDisplayState()I
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultDisplayState()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultOpPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSensorId()I
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultSensorId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultUserId()I
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultUserId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultWakeReason()I
    .locals 1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->defaultWakeReason()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    iput p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    iput p3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    const-class p1, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p4, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    if-eq p4, p1, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_1

    const/4 p1, 0x3

    if-eq p4, p1, :cond_1

    const/4 p1, 0x4

    if-eq p4, p1, :cond_1

    const/4 p1, 0x5

    if-eq p4, p1, :cond_1

    const/4 p1, 0x6

    if-eq p4, p1, :cond_1

    const/4 p1, 0x7

    if-eq p4, p1, :cond_1

    const/16 p1, 0x8

    if-eq p4, p1, :cond_1

    const/16 p1, 0x9

    if-eq p4, p1, :cond_1

    const/16 p1, 0xa

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "authenticateReason was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but must be one of: AUTHENTICATE_REASON_UNKNOWN(0), AUTHENTICATE_REASON_STARTED_WAKING_UP(1), AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN(2), AUTHENTICATE_REASON_ASSISTANT_VISIBLE(3), AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN(4), AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED(5), AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED(6), AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED(7), AUTHENTICATE_REASON_QS_EXPANDED(8), AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER(9), AUTHENTICATE_REASON_UDFPS_POINTER_DOWN(10)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p5, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    const-class p1, Landroid/os/PowerManager$WakeReason;

    invoke-static {p1, p2, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p6, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, p2, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p7, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iput-boolean p8, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    and-int/lit8 v0, v0, 0x40

    const/4 v9, 0x0

    if-nez v0, :cond_1

    move-object p1, v9

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput v3, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    iput v4, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    iput v5, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    const-class v0, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    invoke-static {v0, v9, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v6, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-eqz v6, :cond_3

    if-eq v6, v2, :cond_3

    const/4 v0, 0x2

    if-eq v6, v0, :cond_3

    const/4 v0, 0x3

    if-eq v6, v0, :cond_3

    const/4 v0, 0x4

    if-eq v6, v0, :cond_3

    const/4 v0, 0x5

    if-eq v6, v0, :cond_3

    const/4 v0, 0x6

    if-eq v6, v0, :cond_3

    const/4 v0, 0x7

    if-eq v6, v0, :cond_3

    const/16 v0, 0x8

    if-eq v6, v0, :cond_3

    const/16 v0, 0x9

    if-eq v6, v0, :cond_3

    const/16 v0, 0xa

    if-ne v6, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "authenticateReason was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but must be one of: AUTHENTICATE_REASON_UNKNOWN(0), AUTHENTICATE_REASON_STARTED_WAKING_UP(1), AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN(2), AUTHENTICATE_REASON_ASSISTANT_VISIBLE(3), AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN(4), AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED(5), AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED(6), AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED(7), AUTHENTICATE_REASON_QS_EXPANDED(8), AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER(9), AUTHENTICATE_REASON_UDFPS_POINTER_DOWN(10)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput v7, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    const-class v0, Landroid/os/PowerManager$WakeReason;

    invoke-static {v0, v9, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v8, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist authenticateReasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "AUTHENTICATE_REASON_UDFPS_POINTER_DOWN"

    return-object p0

    :pswitch_1
    const-string p0, "AUTHENTICATE_REASON_SWIPE_UP_ON_BOUNCER"

    return-object p0

    :pswitch_2
    const-string p0, "AUTHENTICATE_REASON_QS_EXPANDED"

    return-object p0

    :pswitch_3
    const-string p0, "AUTHENTICATE_REASON_PICK_UP_GESTURE_TRIGGERED"

    return-object p0

    :pswitch_4
    const-string p0, "AUTHENTICATE_REASON_OCCLUDING_APP_REQUESTED"

    return-object p0

    :pswitch_5
    const-string p0, "AUTHENTICATE_REASON_NOTIFICATION_PANEL_CLICKED"

    return-object p0

    :pswitch_6
    const-string p0, "AUTHENTICATE_REASON_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN"

    return-object p0

    :pswitch_7
    const-string p0, "AUTHENTICATE_REASON_ASSISTANT_VISIBLE"

    return-object p0

    :pswitch_8
    const-string p0, "AUTHENTICATE_REASON_PRIMARY_BOUNCER_SHOWN"

    return-object p0

    :pswitch_9
    const-string p0, "AUTHENTICATE_REASON_STARTED_WAKING_UP"

    return-object p0

    :pswitch_a
    const-string p0, "AUTHENTICATE_REASON_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist defaultAttributionTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultAuthenticateReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultDisplayState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultOpPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSensorId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultUserId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultWakeReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/face/FaceAuthenticateOptions;

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    iget v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    iget-boolean p1, p1, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAuthenticateReason()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    return p0
.end method

.method public blacklist getDisplayState()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    return p0
.end method

.method public blacklist getOpPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSensorId()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    return p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    return p0
.end method

.method public blacklist getWakeReason()I
    .locals 0

    iget p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isMandatoryBiometrics()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return p0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 0

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 2

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 0

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x80

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x40

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mSensorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mDisplayState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAuthenticateReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mWakeReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/face/FaceAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
