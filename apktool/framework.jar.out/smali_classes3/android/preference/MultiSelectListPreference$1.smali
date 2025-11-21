.class Landroid/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method constructor blacklist <init>(Landroid/preference/MultiSelectListPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p3

    invoke-static {p1, p0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {p0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p3

    invoke-static {p1, p0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V

    return-void
.end method
