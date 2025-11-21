.class public final Landroid/media/MediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$KeyRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist REQUEST_TYPE_INITIAL:I = 0x0

.field public static final whitelist REQUEST_TYPE_NONE:I = 0x3

.field public static final whitelist REQUEST_TYPE_RELEASE:I = 0x2

.field public static final whitelist REQUEST_TYPE_RENEWAL:I = 0x1

.field public static final whitelist REQUEST_TYPE_UPDATE:I = 0x4


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mDefaultUrl:Ljava/lang/String;

.field private greylist-max-o mRequestType:I


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getData()[B
    .locals 1

    iget-object p0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "KeyRequest is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getDefaultUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "KeyRequest is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getRequestType()I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$KeyRequest;->mRequestType:I

    return p0
.end method
