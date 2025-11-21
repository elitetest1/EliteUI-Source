.class public final Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
.super Landroid/content/integrity/AtomicFormula;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongAtomicFormula"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$LongAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOperator:Ljava/lang/Integer;

.field private final blacklist mValue:Ljava/lang/Long;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Key %s cannot be used with LongAtomicFormula"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    iput-object p1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Key %s cannot be used with LongAtomicFormula"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->isValidOperator(I)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown operator: %d"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-void
.end method

.method private static blacklist getLongMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)J
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected key in IntAtomicFormula"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist isValidOperator(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
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
    check-cast p1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    iget-object v3, p1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    iget-object p1, p1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getOperator()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist getTag()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public blacklist getValue()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isAppCertificateFormula()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInstallerFormula()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .locals 5

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getLongMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)J

    move-result-wide v2

    iget-object p1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_3

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-ltz p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unexpected operator %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-lez p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s %s %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result p0

    invoke-static {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "(%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write an empty LongAtomicFormula."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
