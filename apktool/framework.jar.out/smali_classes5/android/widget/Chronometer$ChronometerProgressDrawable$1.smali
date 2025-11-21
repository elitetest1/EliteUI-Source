.class Landroid/widget/Chronometer$ChronometerProgressDrawable$1;
.super Landroid/util/IntProperty;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer$ChronometerProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/widget/Chronometer$ChronometerProgressDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Chronometer$ChronometerProgressDrawable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/widget/Chronometer$ChronometerProgressDrawable;)Ljava/lang/Integer;
    .locals 0

    iget p0, p1, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mProgress:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->get(Landroid/widget/Chronometer$ChronometerProgressDrawable;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setValue(Landroid/widget/Chronometer$ChronometerProgressDrawable;I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;

    iget-object v0, v0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;

    iget-object p2, p2, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object p2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;

    iget-object p2, p2, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {p2}, Landroid/widget/Chronometer;->-$$Nest$fgetmMaxProgress(Landroid/widget/Chronometer;)I

    move-result p2

    :cond_0
    iput p2, p1, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mProgress:I

    iget-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;

    iget-object p1, p1, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {p1}, Landroid/widget/Chronometer;->-$$Nest$fgetmProgressDrawable(Landroid/widget/Chronometer;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    iget-object p0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->this$1:Landroid/widget/Chronometer$ChronometerProgressDrawable;

    invoke-virtual {p0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/Chronometer$ChronometerProgressDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;->setValue(Landroid/widget/Chronometer$ChronometerProgressDrawable;I)V

    return-void
.end method
