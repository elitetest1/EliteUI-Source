.class Landroid/widget/RemoteViews$SemAnimationAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemAnimationAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x6b

.field static final blacklist TYPE_BASIC_ANIMATION:I = 0x5

.field static final blacklist TYPE_DRAWABLE_ANIMATION:I = 0x1

.field static final blacklist TYPE_DYNAMIC_ANIMATION:I = 0x4

.field static final blacklist TYPE_PROPERTY_ANIMATION:I = 0x3

.field static final blacklist TYPE_VIEW_ANIMATION:I = 0x2


# instance fields
.field blacklist animation:Landroid/widget/SemRemoteViewsAnimation;

.field blacklist animationType:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Landroid/widget/SemRemoteViewsBasicAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    return-void

    :cond_1
    sget-object p1, Landroid/widget/SemRemoteViewsValueAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    return-void

    :cond_2
    sget-object p1, Landroid/widget/SemRemoteViewsPropertyAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    return-void

    :cond_3
    sget-object p1, Landroid/widget/SemRemoteViewsViewAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    return-void

    :cond_4
    sget-object p1, Landroid/widget/SemRemoteViewsDrawableAnimation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SemRemoteViewsAnimation;

    iput-object p1, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    iget-object p0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->play(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .locals 0

    const-string p0, "SemAnimationAction"

    return-object p0
.end method

.method public blacklist getActionTag()I
    .locals 0

    const/16 p0, 0x6b

    return p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animationType:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast p0, Landroid/widget/SemRemoteViewsBasicAnimation;

    invoke-static {p0, p1}, Landroid/widget/SemRemoteViewsBasicAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsBasicAnimation;Landroid/os/Parcel;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast p0, Landroid/widget/SemRemoteViewsValueAnimation;

    invoke-static {p0, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/os/Parcel;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast p0, Landroid/widget/SemRemoteViewsPropertyAnimation;

    invoke-static {p0, p1}, Landroid/widget/SemRemoteViewsPropertyAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsPropertyAnimation;Landroid/os/Parcel;)V

    return-void

    :cond_3
    iget-object p0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast p0, Landroid/widget/SemRemoteViewsViewAnimation;

    invoke-static {p0, p1}, Landroid/widget/SemRemoteViewsViewAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsViewAnimation;Landroid/os/Parcel;)V

    return-void

    :cond_4
    iget-object p0, p0, Landroid/widget/RemoteViews$SemAnimationAction;->animation:Landroid/widget/SemRemoteViewsAnimation;

    check-cast p0, Landroid/widget/SemRemoteViewsDrawableAnimation;

    invoke-static {p0, p1}, Landroid/widget/SemRemoteViewsDrawableAnimation;->writeToParcel(Landroid/widget/SemRemoteViewsDrawableAnimation;Landroid/os/Parcel;)V

    return-void
.end method
