.class Landroid/view/HandwritingInitiator$DelegationCallback;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"

# interfaces
.implements Landroid/view/inputmethod/ConnectionlessHandwritingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegationCallback"
.end annotation


# instance fields
.field private final blacklist mDelegatePackageName:Ljava/lang/String;

.field private final blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/HandwritingInitiator;


# direct methods
.method private constructor blacklist <init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->this$0:Landroid/view/HandwritingInitiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    iput-object p3, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mDelegatePackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;Landroid/view/HandwritingInitiator-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HandwritingInitiator$DelegationCallback;-><init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->this$0:Landroid/view/HandwritingInitiator;

    invoke-static {p1}, Landroid/view/HandwritingInitiator;->-$$Nest$fgetmImm(Landroid/view/HandwritingInitiator;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mDelegatePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public whitelist onResult(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
