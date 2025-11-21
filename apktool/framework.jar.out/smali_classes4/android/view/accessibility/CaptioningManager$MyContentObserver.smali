.class Landroid/view/accessibility/CaptioningManager$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor blacklist <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "accessibility_captioning_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyEnabledChanged(Landroid/view/accessibility/CaptioningManager;)V

    return-void

    :cond_0
    const-string p2, "accessibility_captioning_locale"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyLocaleChanged(Landroid/view/accessibility/CaptioningManager;)V

    return-void

    :cond_1
    const-string p2, "accessibility_captioning_font_scale"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyFontScaleChanged(Landroid/view/accessibility/CaptioningManager;)V

    return-void

    :cond_2
    const-string/jumbo p2, "odi_captions_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifySystemAudioCaptionChanged(Landroid/view/accessibility/CaptioningManager;)V

    return-void

    :cond_3
    const-string/jumbo p2, "odi_captions_volume_ui_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifySystemAudioCaptionUiChanged(Landroid/view/accessibility/CaptioningManager;)V

    return-void

    :cond_4
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$fgetmStyleChangedRunnable(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$fgetmStyleChangedRunnable(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
