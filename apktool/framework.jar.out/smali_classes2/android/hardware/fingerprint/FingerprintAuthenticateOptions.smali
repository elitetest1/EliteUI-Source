.class public final Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateOptions.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticateOptions;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mDisplayState:I

.field private final blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private final blacklist mUserId:I

.field private blacklist mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAttributionTag()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultDisplayState()I
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultDisplayState()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultIgnoreEnrollmentState()Z
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultIgnoreEnrollmentState()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultOpPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSensorId()I
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultSensorId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultUserId()I
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultUserId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->defaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIZILjava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    iput p2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    iput-boolean p3, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    iput p4, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    const-class p1, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    const/4 p2, 0x0

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, p2, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iput-object p7, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    iput-boolean p8, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-nez v7, :cond_2

    move-object v7, v8

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_3

    move-object p1, v8

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    :goto_3
    iput v3, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    iput v4, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    iput-boolean v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    iput v5, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    const-class v0, Landroid/hardware/biometrics/AuthenticateOptions$DisplayState;

    invoke-static {v0, v8, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v6, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v8, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    iput-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultAttributionTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultDisplayState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultIgnoreEnrollmentState()Z
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

.method private static blacklist defaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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
    check-cast p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    iget-boolean v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    iget-object v3, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    iget-boolean p1, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDisplayState()I
    .locals 0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    return p0
.end method

.method public blacklist getOpPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSensorId()I
    .locals 0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    return p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    return p0
.end method

.method public blacklist getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    return p0
.end method

.method public blacklist isMandatoryBiometrics()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return p0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 2

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 0

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    return-object p0
.end method

.method public blacklist setVendorReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIgnoreEnrollmentState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mIsMandatoryBiometrics:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x20

    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x40

    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mSensorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mDisplayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mAttributionTag:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_5
    return-void
.end method
