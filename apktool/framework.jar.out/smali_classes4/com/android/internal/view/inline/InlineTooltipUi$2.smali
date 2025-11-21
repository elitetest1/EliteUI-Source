.class Lcom/android/internal/view/inline/InlineTooltipUi$2;
.super Ljava/lang/Object;
.source "InlineTooltipUi.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mHeight:I

.field final synthetic blacklist this$0:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    sub-int/2addr p5, p3

    if-eq p1, p5, :cond_1

    iput p5, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    iget-object p0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    :cond_1
    :goto_0
    return-void
.end method
