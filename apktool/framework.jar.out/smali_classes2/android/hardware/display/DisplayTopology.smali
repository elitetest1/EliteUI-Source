.class public final Landroid/hardware/display/DisplayTopology;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopology$TreeNode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MAX_GAP:F = 5.0f

.field private static final blacklist TAG:Ljava/lang/String; = "DisplayTopology"


# instance fields
.field private blacklist mPrimaryDisplayId:I

.field private blacklist mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/DisplayTopology$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    iput-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    :cond_0
    iput p2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    sget-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-void
.end method

.method private blacklist allNodesIdMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1
.end method

.method private blacklist clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_2
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public static blacklist dpToPx(FI)F
    .locals 0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static blacklist findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-ne v1, p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p0, v1}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method private blacklist findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method private static blacklist findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected value: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    add-float/2addr v3, p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    sub-float v3, p1, v3

    :goto_2
    invoke-static {v2, v3}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    new-instance v0, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static blacklist floatEquals(FF)Z
    .locals 1

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "FFI)V"
        }
    .end annotation

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    add-float/2addr v1, p4

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    add-float/2addr v2, p5

    invoke-direct {v0, p4, p5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz p2, :cond_3

    invoke-interface {p2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    sub-float v6, p4, v1

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    add-float v7, p5, v1

    add-int/lit8 v8, p6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_1

    :cond_5
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    sub-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    goto :goto_1

    :cond_6
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_7

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v6, p4, p0

    invoke-static {p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result p0

    add-float v7, p5, p0

    add-int/lit8 v8, p6, 0x1

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    :cond_7
    :goto_1
    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic blacklist lambda$getGraph$2(Landroid/util/SparseArray;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$normalize$0(Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 2

    if-ne p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-double p2, p2

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, p0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$normalize$1(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static blacklist pxToDp(FI)F
    .locals 1

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public blacklist addDisplay(IFF)V
    .locals 7

    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v1}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_1

    new-instance v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    iput-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return-void

    :cond_1
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v1

    sub-float v6, v1, p3

    new-instance v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIF)V

    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology;
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/hardware/display/DisplayTopology;

    iget p0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v1, v0, p0}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DisplayTopology:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mPrimaryDisplayId: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Topology tree:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/display/DisplayTopology;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getAbsoluteBounds()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public blacklist getGraph(Landroid/util/SparseIntArray;)Landroid/hardware/display/DisplayTopologyGraph;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->getAbsoluteBounds()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot construct graph, no density for display "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayTopology"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    add-int/lit8 v6, v6, 0x1

    move v10, v6

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-direct {v0, v8, v12}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v0, v12, v8}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/util/Pair;

    move-object/from16 v16, v2

    new-instance v2, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    move-object/from16 v17, v4

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v2, v11, v4, v5}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;-><init>(IIF)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_4

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    new-instance v5, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v5, v7, v11, v4}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;-><init>(IIF)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    iget v2, v12, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    const v5, 0x38d1b717    # 1.0E-4f

    add-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    :goto_6
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v4, v2, [Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_8

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    new-instance v7, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    new-array v11, v10, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-direct {v7, v6, v8, v9}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;-><init>(II[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;)V

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    new-instance v1, Landroid/hardware/display/DisplayTopologyGraph;

    iget v0, v0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v1, v0, v4}, Landroid/hardware/display/DisplayTopologyGraph;-><init>(I[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)V

    return-object v1
.end method

.method public blacklist getPrimaryDisplayId()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return p0
.end method

.method public blacklist getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist normalize()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology;->getInfo(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;FFI)V

    new-instance v0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3, v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v10, v7

    move v11, v10

    const/4 v9, 0x0

    :goto_1
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ge v9, v3, :cond_9

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/RectF;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/graphics/RectF;

    invoke-static {v15, v6}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v16

    if-nez v16, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v8, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v7

    if-ltz v8, :cond_2

    iget v8, v15, Landroid/graphics/RectF;->right:F

    iget v10, v6, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_2
    iget v8, v15, Landroid/graphics/RectF;->left:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    :goto_2
    sub-float/2addr v8, v10

    iget v10, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_3

    iget v10, v15, Landroid/graphics/RectF;->bottom:F

    iget v11, v6, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_3
    iget v10, v15, Landroid/graphics/RectF;->top:F

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    :goto_3
    sub-float/2addr v10, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v11, v11, v15

    if-gtz v11, :cond_6

    iget v10, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v8

    iput v10, v6, Landroid/graphics/RectF;->left:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v8

    iput v10, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v6

    if-eq v6, v0, :cond_4

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v6

    if-ne v6, v12, :cond_5

    :cond_4
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v6

    add-float/2addr v6, v8

    invoke-static {v5, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    :cond_5
    move v11, v7

    move v10, v8

    goto :goto_4

    :cond_6
    iget v8, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v10

    iput v8, v6, Landroid/graphics/RectF;->top:F

    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v10

    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v6

    if-ne v6, v13, :cond_8

    :cond_7
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v6

    add-float/2addr v6, v10

    invoke-static {v5, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    :cond_8
    move v11, v10

    move v10, v7

    :goto_4
    move-object v8, v14

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez v8, :cond_a

    goto/16 :goto_d

    :cond_a
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayTopology$TreeNode;

    if-ne v6, v8, :cond_b

    goto/16 :goto_d

    :cond_b
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    move/from16 v16, v7

    const-string v7, "Unexpected value: "

    if-eqz v15, :cond_f

    if-eq v15, v0, :cond_e

    if-eq v15, v13, :cond_d

    if-ne v15, v12, :cond_c

    iget v15, v14, Landroid/graphics/RectF;->bottom:F

    iget v12, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v15, v12}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v12

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v12, v14, Landroid/graphics/RectF;->right:F

    iget v15, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v12, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v12

    goto :goto_6

    :cond_e
    iget v12, v14, Landroid/graphics/RectF;->top:F

    iget v15, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v12

    goto :goto_6

    :cond_f
    iget v12, v14, Landroid/graphics/RectF;->left:F

    iget v15, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v12, v15}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v12

    :goto_6
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    const v17, 0x38d1b717    # 1.0E-4f

    if-eqz v15, :cond_11

    if-eq v15, v0, :cond_12

    if-eq v15, v13, :cond_11

    const/4 v0, 0x3

    if-ne v15, v0, :cond_10

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v0, 0x3

    goto :goto_8

    :cond_12
    const/4 v0, 0x3

    :goto_7
    iget v7, v9, Landroid/graphics/RectF;->right:F

    add-float v7, v7, v17

    iget v15, v14, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v15

    if-lez v7, :cond_13

    iget v7, v9, Landroid/graphics/RectF;->left:F

    iget v14, v14, Landroid/graphics/RectF;->right:F

    add-float v14, v14, v17

    cmpg-float v7, v7, v14

    if-gez v7, :cond_13

    goto :goto_9

    :goto_8
    iget v7, v9, Landroid/graphics/RectF;->bottom:F

    add-float v7, v7, v17

    iget v15, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v15

    if-lez v7, :cond_13

    iget v7, v9, Landroid/graphics/RectF;->top:F

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    add-float v14, v14, v17

    cmpg-float v7, v7, v14

    if-gez v7, :cond_13

    :goto_9
    const/4 v7, 0x1

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    :goto_a
    and-int/2addr v7, v12

    if-nez v7, :cond_17

    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-float v7, v10, v16

    if-eqz v7, :cond_15

    if-lez v7, :cond_14

    goto :goto_b

    :cond_14
    const/4 v13, 0x0

    :goto_b
    invoke-static {v5, v13}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v6

    invoke-static {v5, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_d

    :cond_15
    cmpl-float v7, v11, v16

    if-eqz v7, :cond_17

    if-lez v7, :cond_16

    move v12, v0

    goto :goto_c

    :cond_16
    const/4 v12, 0x1

    :goto_c
    invoke-static {v5, v12}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    iget v0, v9, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    invoke-static {v5, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    :cond_17
    :goto_d
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_18
    new-instance v0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_e

    :cond_19
    :goto_f
    return-void
.end method

.method public blacklist rearrange(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology;->allNodesIdMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v4, v5, :cond_a

    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v7, v6

    move-object v6, v5

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v12

    add-float/2addr v11, v12

    iget v12, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v0, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v16

    add-float v0, v0, v16

    move-object/from16 v16, v4

    iget v4, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v17

    add-float v4, v4, v17

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v19, v5

    iget v5, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v17, v17, v0

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v5, v15, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v20, v0

    cmpl-float v5, v17, v0

    if-lez v5, :cond_3

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v0

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v0, v17

    iget v5, v10, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v5, v0

    if-gez v0, :cond_2

    iget v0, v15, Landroid/graphics/PointF;->y:F

    sub-float v0, v12, v0

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    iget v0, v10, Landroid/graphics/PointF;->y:F

    sub-float v0, v4, v0

    const/4 v4, 0x3

    :goto_4
    iget v5, v10, Landroid/graphics/PointF;->x:F

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v15

    move v15, v5

    move v5, v4

    move v4, v0

    move/from16 v0, v17

    goto :goto_6

    :cond_3
    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v4

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v0, v4, v0

    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v5, v15, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget v4, v15, Landroid/graphics/PointF;->x:F

    sub-float v4, v11, v4

    const/4 v5, 0x0

    goto :goto_5

    :cond_4
    iget v4, v10, Landroid/graphics/PointF;->x:F

    sub-float v4, v18, v4

    const/4 v5, 0x2

    :goto_5
    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/PointF;->y:F

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v15

    move v15, v0

    move v0, v4

    move/from16 v4, v17

    :goto_6
    move-wide/from16 v20, v7

    move-object/from16 v17, v6

    float-to-double v6, v0

    move-object v0, v10

    move v8, v11

    float-to-double v10, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    cmpl-double v4, v6, v20

    if-ltz v4, :cond_5

    move-object v10, v0

    move v11, v8

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v19

    move-wide/from16 v7, v20

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_5
    invoke-static {v9, v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    invoke-static {v9, v15}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    move-object v10, v0

    move v11, v8

    move-object v5, v14

    move-object/from16 v4, v16

    move-object/from16 v0, p0

    move-wide v7, v6

    move-object v6, v9

    goto/16 :goto_3

    :cond_6
    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v7

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "child not in pending set! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newPos has wrong number of entries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeDisplay(I)Z
    .locals 5

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v3

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFF)V

    :cond_1
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p1

    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayTopology;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateDisplay(IFF)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v2, p2}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    invoke-static {v2, p3}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0, p2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmWidth(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    invoke-static {v0, p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmHeight(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Display with ID "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " updated, new width: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", new height: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayTopology"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
