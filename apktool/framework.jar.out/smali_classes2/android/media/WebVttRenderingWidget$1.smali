.class Landroid/media/WebVttRenderingWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttRenderingWidget;


# direct methods
.method constructor blacklist <init>(Landroid/media/WebVttRenderingWidget;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFontScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const v0, 0x3d5a511a    # 0.0533f

    mul-float/2addr p1, v0

    iget-object p0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-static {p0}, Landroid/media/WebVttRenderingWidget;->-$$Nest$fgetmCaptionStyle(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/media/WebVttRenderingWidget;->-$$Nest$msetCaptionStyle(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method public whitelist onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    iget-object p0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-static {p0}, Landroid/media/WebVttRenderingWidget;->-$$Nest$fgetmFontSize(Landroid/media/WebVttRenderingWidget;)F

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;->-$$Nest$msetCaptionStyle(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method
