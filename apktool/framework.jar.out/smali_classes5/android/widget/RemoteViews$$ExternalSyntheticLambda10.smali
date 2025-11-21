.class public final synthetic Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$PendingResources;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;->f$0:Ljava/util/function/Function;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->lambda$createIconFromProto$10(Ljava/util/function/Function;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method
