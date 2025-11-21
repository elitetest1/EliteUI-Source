.class Landroid/app/Activity$HostCallbacks;
.super Landroid/app/FragmentHostCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/FragmentHostCallback<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-direct {p0, p1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public whitelist onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public blacklist onGetHost()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic whitelist onGetHost()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onGetHost()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public whitelist onGetWindowAnimations()I
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return p0
.end method

.method public whitelist onHasView()Z
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onHasWindowAnimations()Z
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onInvalidateOptionsMenu()V
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public whitelist onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@android:requestPermissions:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-static/range {p0 .. p5}, Landroid/app/Activity;->-$$Nest$mstartActivityAsUserFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void

    :cond_0
    if-eqz p8, :cond_1

    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    iget-object v3, v0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-static/range {v3 .. v10}, Landroid/app/Activity;->-$$Nest$mstartIntentSenderFromFragment(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public whitelist onUseFragmentManagerInflaterFactory()Z
    .locals 1

    iget-object p0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
