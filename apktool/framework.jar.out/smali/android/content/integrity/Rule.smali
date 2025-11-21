.class public final Landroid/content/integrity/Rule;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/Rule$Effect;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DENY:I = 0x0

.field public static final whitelist FORCE_ALLOW:I = 0x1


# instance fields
.field private final blacklist mEffect:I

.field private final blacklist mFormula:Landroid/content/integrity/IntegrityFormula;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/integrity/Rule$1;

    invoke-direct {v0}, Landroid/content/integrity/Rule$1;-><init>()V

    sput-object v0, Landroid/content/integrity/Rule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/integrity/IntegrityFormula;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/content/integrity/Rule;->isValidEffect(I)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unknown effect: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/integrity/IntegrityFormula;

    iput-object p1, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    iput p2, p0, Landroid/content/integrity/Rule;->mEffect:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/integrity/IntegrityFormula;->readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/integrity/Rule;->mEffect:I

    return-void
.end method

.method private static blacklist effectToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "FORCE_ALLOW"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown effect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "DENY"

    return-object p0
.end method

.method private static blacklist isValidEffect(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

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
    check-cast p1, Landroid/content/integrity/Rule;

    iget v2, p0, Landroid/content/integrity/Rule;->mEffect:I

    iget v3, p1, Landroid/content/integrity/Rule;->mEffect:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    iget-object p1, p1, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getEffect()I
    .locals 0

    iget p0, p0, Landroid/content/integrity/Rule;->mEffect:I

    return p0
.end method

.method public whitelist getFormula()Landroid/content/integrity/IntegrityFormula;
    .locals 0

    iget-object p0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    iget p0, p0, Landroid/content/integrity/Rule;->mEffect:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    iget p0, p0, Landroid/content/integrity/Rule;->mEffect:I

    invoke-static {p0}, Landroid/content/integrity/Rule;->effectToString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Rule: %s, %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    invoke-static {v0, p1, p2}, Landroid/content/integrity/IntegrityFormula;->writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V

    iget p0, p0, Landroid/content/integrity/Rule;->mEffect:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
