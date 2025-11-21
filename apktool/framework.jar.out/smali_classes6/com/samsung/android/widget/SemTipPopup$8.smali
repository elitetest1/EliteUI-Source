.class Lcom/samsung/android/widget/SemTipPopup$8;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->showInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$8;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$8;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmType(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup$8;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
