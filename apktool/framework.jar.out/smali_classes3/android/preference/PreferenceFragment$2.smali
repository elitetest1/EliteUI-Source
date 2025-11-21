.class Landroid/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/preference/PreferenceFragment;->-$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object p0, p0, Landroid/preference/PreferenceFragment$2;->this$0:Landroid/preference/PreferenceFragment;

    invoke-static {p0}, Landroid/preference/PreferenceFragment;->-$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
