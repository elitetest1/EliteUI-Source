.class final Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache$NonceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "invalidated",
        "corkedInvalidates"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final blacklist corkedInvalidates:I

.field private final blacklist invalidated:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iget v1, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    iget p1, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    return p0
.end method

.method constructor blacklist <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "invalidated",
            "corkedInvalidates"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iput p2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return-void
.end method


# virtual methods
.method public blacklist corkedInvalidates()I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(II)I

    move-result p0

    return p0
.end method

.method public blacklist invalidated()I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    const-string v1, "invalidated;corkedInvalidates"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
