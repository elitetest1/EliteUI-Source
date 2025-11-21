.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;->f$1:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;->f$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda7;->f$1:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->lambda$closeCurrentInput$6(Landroid/view/ViewRootImpl;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method
