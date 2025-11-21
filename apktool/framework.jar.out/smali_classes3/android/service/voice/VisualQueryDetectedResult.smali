.class public final Landroid/service/voice/VisualQueryDetectedResult;
.super Ljava/lang/Object;
.source "VisualQueryDetectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryDetectedResult$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisualQueryDetectedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessibilityDetectionData:[B

.field private final blacklist mPartialQuery:Ljava/lang/String;

.field private final blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAccessibilityDetectionData()[B
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultAccessibilityDetectionData()[B

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultPartialQuery()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultPartialQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSpeakerId()I
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultSpeakerId()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisualQueryDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iput-object p3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultAccessibilityDetectionData()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultPartialQuery()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSpeakerId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxSpeakerId()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method private blacklist onConstructed()V
    .locals 3

    iget p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->getMaxSpeakerId()I

    move-result v0

    const-string/jumbo v1, "speakerId"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .locals 2

    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;-><init>()V

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setPartialQuery(Ljava/lang/String;)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setSpeakerId(I)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-virtual {v0, p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setAccessibilityDetectionData([B)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object p0

    return-object p0
.end method

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
    check-cast p1, Landroid/service/voice/VisualQueryDetectedResult;

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iget v3, p1, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    iget-object p1, p1, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAccessibilityDetectionData()[B
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    return-object p0
.end method

.method public whitelist getPartialQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSpeakerId()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VisualQueryDetectedResult { partialQuery = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", speakerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accessibilityDetectionData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
