.class Landroid/preference/PreferenceActivity$5;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmEnableSplitBar(Landroid/preference/PreferenceActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result p1

    :goto_0
    iget-object p2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_2

    move p1, p2

    :cond_2
    iget-object p2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {p0}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    :cond_3
    :goto_1
    return-void
.end method
