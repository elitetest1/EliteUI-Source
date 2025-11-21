.class public final Landroid/speech/AlternativeSpan;
.super Ljava/lang/Object;
.source "AlternativeSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/AlternativeSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlternatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndPosition:I

.field private final blacklist mStartPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/speech/AlternativeSpan$1;

    invoke-direct {v0}, Landroid/speech/AlternativeSpan$1;-><init>()V

    sput-object v0, Landroid/speech/AlternativeSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    iput p2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    iput-object p3, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/speech/AlternativeSpan;->onConstructed()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iput v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    iput v1, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    iput-object v2, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/speech/AlternativeSpan;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist onConstructed()V
    .locals 3

    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    const-string v1, "The range start must be non-negative."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    iget v1, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Illegal range [%d, %d), must be start < end."

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    const-string v0, "List of alternative strings must not be empty."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

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
    check-cast p1, Landroid/speech/AlternativeSpan;

    iget v2, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    iget v3, p1, Landroid/speech/AlternativeSpan;->mStartPosition:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    iget v3, p1, Landroid/speech/AlternativeSpan;->mEndPosition:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    iget-object p1, p1, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAlternatives()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getEndPosition()I
    .locals 0

    iget p0, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    return p0
.end method

.method public whitelist getStartPosition()I
    .locals 0

    iget p0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlternativeSpan { startPosition = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alternatives = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
