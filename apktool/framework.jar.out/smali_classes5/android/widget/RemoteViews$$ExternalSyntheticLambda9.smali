.class public final synthetic Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RemoteViews$PendingResources;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$3;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;->f$0:Landroid/widget/RemoteViews$3;

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;->f$0:Landroid/widget/RemoteViews$3;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->lambda$createFromProto$9(Landroid/widget/RemoteViews$3;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method
