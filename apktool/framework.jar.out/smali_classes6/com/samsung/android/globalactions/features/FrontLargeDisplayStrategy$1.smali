.class Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;
.super Ljava/lang/Object;
.source "FrontLargeDisplayStrategy.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;->doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

.field final synthetic blacklist val$extraUnlockType:Ljava/lang/String;

.field final synthetic blacklist val$viewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->val$viewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->val$extraUnlockType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFoldStateChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    invoke-static {p1}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;->-$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object p1

    const-string v0, "FrontLargeDisplayStrategy"

    const-string/jumbo v1, "registerSecureConfirm by FoldStateChangedListener-->Large"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    invoke-static {p1}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;->-$$Nest$fgetmKeyguardManagerWrapper(Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;)Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    iget-object p1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    invoke-static {p1}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;->-$$Nest$fgetmGlobalActions(Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;)Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->val$viewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object p1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    invoke-static {p1}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;->-$$Nest$fgetmKeyguardManagerWrapper(Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;)Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->val$extraUnlockType:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlockOnCover(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy$1;->this$0:Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;

    invoke-static {p0}, Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;->-$$Nest$fgetmGlobalActions(Lcom/samsung/android/globalactions/features/FrontLargeDisplayStrategy;)Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    :cond_0
    return-void
.end method

.method public whitelist onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
