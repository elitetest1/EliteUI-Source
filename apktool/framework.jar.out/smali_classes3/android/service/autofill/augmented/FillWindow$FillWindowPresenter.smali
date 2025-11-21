.class final Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FillWindowPresenter"
.end annotation


# instance fields
.field private final blacklist mFillWindowReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/autofill/augmented/FillWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2ieZLQw_gMWXT1Fl2PT-ExsSnyM(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$mhandleShow(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EP0TJB12UyFcxqoPIhEwKs2T_eA(Landroid/service/autofill/augmented/FillWindow;)V
    .locals 0

    invoke-static {p0}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$mhandleHide(Landroid/service/autofill/augmented/FillWindow;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/FillWindow;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist hide(Landroid/graphics/Rect;)V
    .locals 1

    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FillWindowPresenter.hide()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/augmented/FillWindow;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public blacklist show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 0

    sget-boolean p2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FillWindowPresenter.show()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/augmented/FillWindow;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/service/autofill/augmented/FillWindow;->-$$Nest$fgetmUiThreadHandler(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
