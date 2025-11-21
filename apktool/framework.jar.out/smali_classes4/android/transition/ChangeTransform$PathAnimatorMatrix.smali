.class Landroid/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mTranslationX:F

.field private greylist-max-o mTranslationY:F

.field private final greylist-max-o mValues:[F

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 p2, 0x2

    aget p2, p1, p2

    iput p2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    const/4 p2, 0x5

    aget p1, p1, p2

    iput p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method private greylist-max-o setAnimationMatrix()V
    .locals 3

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    iget v2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    aput v2, v0, v1

    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object p0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public greylist-max-o setTranslation(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method

.method public greylist-max-o setValues([F)V
    .locals 3

    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    return-void
.end method
