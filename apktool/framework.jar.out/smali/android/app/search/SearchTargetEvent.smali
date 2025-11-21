.class public final Landroid/app/search/SearchTargetEvent;
.super Ljava/lang/Object;
.source "SearchTargetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchTargetEvent$Builder;,
        Landroid/app/search/SearchTargetEvent$FlagType;,
        Landroid/app/search/SearchTargetEvent$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DELETE:I = 0x9

.field public static final whitelist ACTION_DISMISS:I = 0xa

.field public static final whitelist ACTION_DRAGNDROP:I = 0x7

.field public static final whitelist ACTION_LAUNCH_KEYBOARD_FOCUS:I = 0x6

.field public static final whitelist ACTION_LAUNCH_TOUCH:I = 0x5

.field public static final whitelist ACTION_LONGPRESS:I = 0x4

.field public static final whitelist ACTION_SURFACE_INVISIBLE:I = 0x8

.field public static final whitelist ACTION_SURFACE_VISIBLE:I = 0x1

.field public static final whitelist ACTION_TAP:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchTargetEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_IME_SHOWN:I = 0x1


# instance fields
.field private final blacklist mAction:I

.field private blacklist mFlags:I

.field private final blacklist mLocation:Ljava/lang/String;

.field private final blacklist mTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/search/SearchTargetEvent$1;

    invoke-direct {v0}, Landroid/app/search/SearchTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/search/SearchTargetEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/search/SearchTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    iput-object p2, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    iput p3, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    iput p4, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;IILandroid/app/search/SearchTargetEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/search/SearchTargetEvent;-><init>(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/app/search/SearchTargetEvent;

    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    iget-object v2, p1, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    iget v2, p1, Landroid/app/search/SearchTargetEvent;->mAction:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    iget v2, p1, Landroid/app/search/SearchTargetEvent;->mFlags:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object p0, p1, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist getAction()I
    .locals 0

    iget p0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    return p0
.end method

.method public whitelist getFlags()I
    .locals 0

    iget p0, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    return p0
.end method

.method public whitelist getLaunchLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTargetId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTargetIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
