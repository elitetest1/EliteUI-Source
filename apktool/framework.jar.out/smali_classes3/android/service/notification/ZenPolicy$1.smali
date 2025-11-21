.class Landroid/service/notification/ZenPolicy$1;
.super Ljava/lang/Object;
.source "ZenPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/ZenPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenPolicy;
    .locals 2

    new-instance p0, Landroid/service/notification/ZenPolicy;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;-><init>()V

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCategories(Landroid/service/notification/ZenPolicy;Ljava/util/List;)V

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmVisualEffects(Landroid/service/notification/ZenPolicy;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmAllowChannels(Landroid/service/notification/ZenPolicy;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmAppBypassDndFlag(Landroid/service/notification/ZenPolicy;I)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmExceptionContactsFlag(Landroid/service/notification/ZenPolicy;I)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmExceptionContacts(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmIsContactsOverridden(Landroid/service/notification/ZenPolicy;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmIsAppBypassDndOverridden(Landroid/service/notification/ZenPolicy;Z)V

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/service/notification/ZenPolicy;
    .locals 0

    new-array p0, p1, [Landroid/service/notification/ZenPolicy;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$1;->newArray(I)[Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method
