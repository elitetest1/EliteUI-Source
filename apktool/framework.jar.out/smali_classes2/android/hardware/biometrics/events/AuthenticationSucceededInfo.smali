.class public final Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
.super Ljava/lang/Object;
.source "AuthenticationSucceededInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mIsStrongBiometric:Z

.field private final blacklist mRequestReason:I

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    const-class p1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean p3, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    const-class v1, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    invoke-static {v1, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
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
    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    iget v3, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    iget-boolean v3, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    iget p1, p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object p0
.end method

.method public blacklist getRequestReason()I
    .locals 0

    iget p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    return p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isIsStrongBiometric()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mIsStrongBiometric:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mRequestReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
