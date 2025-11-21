.class Landroid/widget/TextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
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

    iput-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1

    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p1}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p1}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p1}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/TextClock;->-$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p1}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p1}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p1}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/widget/TextClock;->-$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {p0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    return-void
.end method
