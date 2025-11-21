.class interface abstract Landroid/inputmethodservice/NavigationBarController$Callback;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Callback"
.end annotation


# static fields
.field public static final blacklist NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Callback$1;

    invoke-direct {v0}, Landroid/inputmethodservice/NavigationBarController$Callback$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    return-void
.end method


# virtual methods
.method public blacklist isShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onDestroy()V
    .locals 0

    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 0

    return-void
.end method

.method public blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .locals 0

    return-void
.end method

.method public blacklist onViewInitialized()V
    .locals 0

    return-void
.end method

.method public blacklist onWindowShown()V
    .locals 0

    return-void
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 0

    const-string p0, "No-op implementation"

    return-object p0
.end method

.method public blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 0

    return-void
.end method

.method public blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    return-void
.end method
