.class Landroid/widget/RemoteViews$MethodKey;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodKey"
.end annotation


# instance fields
.field public greylist-max-o methodName:Ljava/lang/String;

.field public greylist-max-o paramClass:Ljava/lang/Class;

.field public greylist-max-o targetClass:Ljava/lang/Class;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/widget/RemoteViews$MethodKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/widget/RemoteViews$MethodKey;

    iget-object v0, p1, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    iget-object v2, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    iget-object v2, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    iget-object p0, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public greylist-max-o set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$MethodKey;->targetClass:Ljava/lang/Class;

    iput-object p2, p0, Landroid/widget/RemoteViews$MethodKey;->paramClass:Ljava/lang/Class;

    iput-object p3, p0, Landroid/widget/RemoteViews$MethodKey;->methodName:Ljava/lang/String;

    return-void
.end method
