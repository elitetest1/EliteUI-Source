.class public final Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
.super Ljava/lang/Record;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopologyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdjacentDisplay"
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
        "position",
        "offsetDp"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        F
    }
.end annotation


# instance fields
.field private final blacklist displayId:I

.field private final blacklist offsetDp:F

.field private final blacklist position:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    iget p1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor blacklist <init>(IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayId",
            "position",
            "offsetDp"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    iput p2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    iput p3, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    return-void
.end method


# virtual methods
.method public blacklist displayId()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    return p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    invoke-static {v0, v1, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(IIF)I

    move-result p0

    return p0
.end method

.method public blacklist offsetDp()F
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    return p0
.end method

.method public blacklist position()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdjacentDisplay{displayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsetDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
