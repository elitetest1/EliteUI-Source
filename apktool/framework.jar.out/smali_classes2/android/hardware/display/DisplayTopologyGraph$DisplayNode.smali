.class public final Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
.super Ljava/lang/Record;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopologyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayNode"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "displayId",
        "density",
        "adjacentDisplays"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
    }
.end annotation


# instance fields
.field private final blacklist adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

.field private final blacklist density:I

.field private final blacklist displayId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget-object p1, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(II[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayId",
            "density",
            "adjacentDisplays"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    iput p2, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    iput-object p3, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    return-void
.end method


# virtual methods
.method public blacklist adjacentDisplays()[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    return-object p0
.end method

.method public blacklist density()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    return p0
.end method

.method public blacklist displayId()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    return p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    iget-object p0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-static {v0, v1, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    const-string v1, "displayId;density;adjacentDisplays"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
