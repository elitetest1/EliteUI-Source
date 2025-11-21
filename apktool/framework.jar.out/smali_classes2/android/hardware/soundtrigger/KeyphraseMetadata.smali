.class public final Landroid/hardware/soundtrigger/KeyphraseMetadata;
.super Ljava/lang/Object;
.source "KeyphraseMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mKeyphrase:Ljava/lang/String;

.field private final blacklist mRecognitionModeFlags:I

.field private final blacklist mSupportedLocales:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/util/Set;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iput-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    iput p4, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

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
    check-cast p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iget v3, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    iget p1, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    return p0
.end method

.method public blacklist getKeyphrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRecognitionModeFlags()I
    .locals 0

    iget p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    return p0
.end method

.method public blacklist getSupportedLocales()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    add-int/2addr v0, p0

    return v0
.end method

.method public greylist-max-o supportsLocale(Ljava/util/Locale;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getSupportedLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getSupportedLocales()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method public greylist-max-o supportsPhrase(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getKeyphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getKeyphrase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyphraseMetadata { id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyphrase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedLocales = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recognitionModeFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget p0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
