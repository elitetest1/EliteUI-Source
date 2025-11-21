.class final Landroid/widget/SmartSelectSprite$RectangleList;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RectangleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList$DisplayType;
    }
.end annotation


# static fields
.field private static final greylist-max-o PROPERTY_LEFT_BOUNDARY:Ljava/lang/String; = "leftBoundary"

.field private static final greylist-max-o PROPERTY_RIGHT_BOUNDARY:Ljava/lang/String; = "rightBoundary"


# instance fields
.field private greylist-max-o mDisplayType:I

.field private final greylist-max-o mOutlinePolygonPath:Landroid/graphics/Path;

.field private final greylist-max-o mRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mReversedRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetTotalWidth(Landroid/widget/SmartSelectSprite$RectangleList;)I
    .locals 0

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/widget/SmartSelectSprite-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private greylist-max-o drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private greylist-max-o drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static greylist-max-o generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$fgetmBoundingRectangle(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private greylist-max-o getTotalWidth()I
    .locals 2

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    int-to-float v0, v0

    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private greylist-max-o setLeftBoundary(F)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v2

    sub-float v2, v0, v2

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_0
    cmpl-float v3, p1, v0

    if-lez v3, :cond_1

    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v0

    invoke-static {v1, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    sub-float/2addr v3, v0

    add-float/2addr v3, p1

    invoke-static {v1, v3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist-max-o setRightBoundary(F)V
    .locals 5

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    add-float/2addr v3, v1

    cmpg-float v4, v3, p1

    if-gez v4, :cond_0

    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v1

    invoke-static {v2, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_0
    cmpl-float v4, v1, p1

    if-lez v4, :cond_1

    invoke-static {v2, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_1
    sub-float v1, p1, v1

    invoke-static {v2, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->-$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method greylist-max-o setDisplayType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    return-void
.end method
