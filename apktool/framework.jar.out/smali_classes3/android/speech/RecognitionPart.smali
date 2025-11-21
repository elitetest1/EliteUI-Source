.class public final Landroid/speech/RecognitionPart;
.super Ljava/lang/Object;
.source "RecognitionPart.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionPart$Builder;,
        Landroid/speech/RecognitionPart$ConfidenceLevel;,
        Landroid/speech/RecognitionPart$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x5

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_LOW:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/RecognitionPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:I

.field private final blacklist mFormattedText:Ljava/lang/String;

.field private final blacklist mRawText:Ljava/lang/String;

.field private final blacklist mTimestampMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .locals 1

    invoke-static {}, Landroid/speech/RecognitionPart;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultFormattedText()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/speech/RecognitionPart;->defaultFormattedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTimestampMillis()J
    .locals 2

    invoke-static {}, Landroid/speech/RecognitionPart;->defaultTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/speech/RecognitionPart$1;

    invoke-direct {v0}, Landroid/speech/RecognitionPart$1;-><init>()V

    sput-object v0, Landroid/speech/RecognitionPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput-object v1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    const-class v6, Landroid/annotation/NonNull;

    invoke-static {v6, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    iput-wide v4, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    iput p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "confidenceLevel was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but must be one of: CONFIDENCE_LEVEL_UNKNOWN(0), CONFIDENCE_LEVEL_LOW(1), CONFIDENCE_LEVEL_MEDIUM_LOW(2), CONFIDENCE_LEVEL_MEDIUM(3), CONFIDENCE_LEVEL_MEDIUM_HIGH(4), CONFIDENCE_LEVEL_HIGH(5)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/speech/RecognitionPart;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    iput-wide p3, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    iput p5, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    if-eq p5, p1, :cond_1

    const/4 p1, 0x2

    if-eq p5, p1, :cond_1

    const/4 p1, 0x3

    if-eq p5, p1, :cond_1

    const/4 p1, 0x4

    if-eq p5, p1, :cond_1

    const/4 p1, 0x5

    if-ne p5, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "confidenceLevel was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but must be one of: CONFIDENCE_LEVEL_UNKNOWN(0), CONFIDENCE_LEVEL_LOW(1), CONFIDENCE_LEVEL_MEDIUM_LOW(2), CONFIDENCE_LEVEL_MEDIUM(3), CONFIDENCE_LEVEL_MEDIUM_HIGH(4), CONFIDENCE_LEVEL_HIGH(5)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/speech/RecognitionPart;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CONFIDENCE_LEVEL_HIGH"

    return-object p0

    :cond_1
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM_HIGH"

    return-object p0

    :cond_2
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object p0

    :cond_3
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM_LOW"

    return-object p0

    :cond_4
    const-string p0, "CONFIDENCE_LEVEL_LOW"

    return-object p0

    :cond_5
    const-string p0, "CONFIDENCE_LEVEL_UNKNOWN"

    return-object p0
.end method

.method private static blacklist defaultConfidenceLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultFormattedText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTimestampMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist onConstructed()V
    .locals 2

    iget-wide v0, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    const-string p0, "The timestamp must be non-negative."

    invoke-static {v0, v1, p0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Landroid/speech/RecognitionPart;

    iget-object v2, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    iget-object v3, p1, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    iget-object v3, p1, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    iget-wide v4, p1, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget p0, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    iget p1, p1, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getConfidenceLevel()I
    .locals 0

    iget p0, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    return p0
.end method

.method public whitelist getFormattedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRawText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecognitionPart { rawText = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    invoke-static {p0}, Landroid/speech/RecognitionPart;->confidenceLevelToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
