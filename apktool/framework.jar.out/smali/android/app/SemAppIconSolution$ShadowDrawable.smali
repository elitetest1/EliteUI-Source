.class public Landroid/app/SemAppIconSolution$ShadowDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemAppIconSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;
    }
.end annotation


# instance fields
.field final blacklist mState:Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;


# direct methods
.method constructor blacklist <init>(Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;)V
    .locals 1

    iget-object v0, p1, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/app/SemAppIconSolution$ShadowDrawable;->mState:Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v0, p0, Landroid/app/SemAppIconSolution$ShadowDrawable;->mState:Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/SemAppIconSolution$ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution$ShadowDrawable;->mState:Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;

    iget-object v1, v1, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/app/SemAppIconSolution$ShadowDrawable;->mState:Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;

    iget-object v2, v2, Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f75c290    # 0.96000004f

    mul-float/2addr v1, v2

    const v3, 0x3caaaaab

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    mul-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Landroid/app/SemAppIconSolution$ShadowDrawable;->mState:Landroid/app/SemAppIconSolution$ShadowDrawable$MyConstantState;

    return-object p0
.end method
