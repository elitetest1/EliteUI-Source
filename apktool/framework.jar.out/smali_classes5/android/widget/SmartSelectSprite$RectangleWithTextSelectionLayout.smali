.class final Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RectangleWithTextSelectionLayout"
.end annotation


# instance fields
.field private final greylist-max-o mRectangle:Landroid/graphics/RectF;

.field private final greylist-max-o mTextSelectionLayout:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/RectF;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iput-object p1, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    iput p2, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    return-void
.end method


# virtual methods
.method public greylist-max-o getRectangle()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mRectangle:Landroid/graphics/RectF;

    return-object p0
.end method

.method public greylist-max-o getTextSelectionLayout()I
    .locals 0

    iget p0, p0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->mTextSelectionLayout:I

    return p0
.end method
