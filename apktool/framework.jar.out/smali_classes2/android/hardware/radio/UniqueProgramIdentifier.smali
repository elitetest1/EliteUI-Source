.class public final Landroid/hardware/radio/UniqueProgramIdentifier;
.super Ljava/lang/Object;
.source "UniqueProgramIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

.field private final blacklist mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier$1;

    invoke-direct {v0}, Landroid/hardware/radio/UniqueProgramIdentifier$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/UniqueProgramIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/ProgramSelector;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Program selector can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    new-array p1, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_4

    if-nez v1, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    aget-object v1, v1, v4

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    aget-object v3, v0, v4

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x1

    if-nez v1, :cond_6

    if-nez v3, :cond_5

    new-array p1, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void

    :cond_5
    new-array p1, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v3, p1, v2

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void

    :cond_6
    if-nez v3, :cond_7

    new-array p1, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v1, p1, v2

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v1, v0, v2

    aput-object v3, v0, p1

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    iput-object p1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/UniqueProgramIdentifier-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist requireCriticalSecondaryIds(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
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
    instance-of v1, p1, Landroid/hardware/radio/UniqueProgramIdentifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/hardware/radio/UniqueProgramIdentifier;

    iget-object v1, p1, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object v3, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v1, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object p0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getCriticalSecondaryIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-object p0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UniqueProgramIdentifier(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mPrimaryId:Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/radio/UniqueProgramIdentifier;->mCriticalSecondaryIds:[Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Landroid/hardware/radio/UniqueProgramIdentifier$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/hardware/radio/UniqueProgramIdentifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "criticalSecondaryIds list must not contain nulls"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
