.class public Landroid/drm/DrmInfoRequest;
.super Ljava/lang/Object;
.source "DrmInfoRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final whitelist SEM_DAY:Ljava/lang/String; = "day"

.field public static final whitelist SEM_DRM_PATH:Ljava/lang/String; = "drm_path"

.field public static final whitelist SEM_FAIL:Ljava/lang/String; = "fail"

.field public static final whitelist SEM_HOUR:Ljava/lang/String; = "hour"

.field public static final whitelist SEM_MINUTE:Ljava/lang/String; = "minute"

.field public static final whitelist SEM_MONTH:Ljava/lang/String; = "month"

.field public static final whitelist SEM_SECOND:Ljava/lang/String; = "second"

.field public static final whitelist SEM_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist SEM_SUCCESS:Ljava/lang/String; = "success"

.field public static final whitelist SEM_TYPE_CONVERT_DRM_FILE:I = 0x7

.field public static final whitelist SEM_TYPE_GET_DECRYPT_IMAGE:I = 0xa

.field public static final whitelist SEM_TYPE_GET_DRMFILE_INFO:I = 0xe

.field public static final whitelist SEM_TYPE_GET_OPTION_MENU:I = 0x10

.field public static final whitelist SEM_TYPE_GET_PERMISSION_TYPE:I = 0xf

.field public static final whitelist SEM_TYPE_HANDLE_TVOUT:I = 0xb

.field public static final whitelist SEM_TYPE_HANDLE_TVOUT_UNPLUGGED:I = 0xc

.field public static final whitelist SEM_TYPE_IS_CONVERTED_FL:I = 0x11

.field public static final whitelist SEM_TYPE_SET_SECURE_CLOCK:I = 0x23

.field public static final whitelist SEM_TYPE_UPDATE_SECURE_CLOCK:I = 0x24

.field public static final whitelist SEM_YEAR:Ljava/lang/String; = "year"

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist TYPE_REGISTRATION_INFO:I = 0x1

.field public static final whitelist TYPE_RIGHTS_ACQUISITION_INFO:I = 0x3

.field public static final whitelist TYPE_RIGHTS_ACQUISITION_PROGRESS_INFO:I = 0x4

.field public static final whitelist TYPE_UNREGISTRATION_INFO:I = 0x2


# instance fields
.field private final greylist-max-o mInfoType:I

.field private final greylist-max-o mMimeType:Ljava/lang/String;

.field private final greylist-max-o mRequestInformation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    iput p1, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    iput-object p2, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "infoType: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mimeType: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static greylist-max-o isValidType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x24

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getInfoType()I
    .locals 0

    iget p0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    return p0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method greylist-max-o isValid()Z
    .locals 2

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    invoke-static {p0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist keyIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
