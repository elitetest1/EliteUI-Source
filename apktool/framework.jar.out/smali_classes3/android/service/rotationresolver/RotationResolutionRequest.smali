.class public final Landroid/service/rotationresolver/RotationResolutionRequest;
.super Ljava/lang/Object;
.source "RotationResolutionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/rotationresolver/RotationResolutionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCurrentRotation:I

.field private final blacklist mForegroundPackageName:Ljava/lang/String;

.field private final blacklist mProposedRotation:I

.field private final blacklist mShouldUseCamera:Z

.field private final blacklist mTimeoutMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/rotationresolver/RotationResolutionRequest$1;

    invoke-direct {v0}, Landroid/service/rotationresolver/RotationResolutionRequest$1;-><init>()V

    sput-object v0, Landroid/service/rotationresolver/RotationResolutionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    const-class p1, Landroid/annotation/NonNull;

    const/4 v6, 0x0

    invoke-static {p1, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    const-class p1, Landroid/view/Surface$Rotation;

    invoke-static {p1, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v3, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    const-class p1, Landroid/view/Surface$Rotation;

    invoke-static {p1, v6, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    iput-wide v4, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    const-class p0, Landroid/annotation/DurationMillisLong;

    invoke-static {p0, v6, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIZJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    const-class p1, Landroid/view/Surface$Rotation;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p3, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    const-class p1, Landroid/view/Surface$Rotation;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean p4, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    iput-wide p5, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    const-class p0, Landroid/annotation/DurationMillisLong;

    invoke-static {p0, v1, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

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

.method public whitelist getCurrentRotation()I
    .locals 0

    iget p0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    return p0
.end method

.method public whitelist getForegroundPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getProposedRotation()I
    .locals 0

    iget p0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    return p0
.end method

.method public whitelist getTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    return-wide v0
.end method

.method public whitelist shouldUseCamera()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RotationResolutionRequest { foregroundPackageName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proposedRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldUseCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
