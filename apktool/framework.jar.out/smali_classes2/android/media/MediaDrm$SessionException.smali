.class public final Landroid/media/MediaDrm$SessionException;
.super Ljava/lang/RuntimeException;
.source "MediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$SessionException$SessionErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_RESOURCE_CONTENTION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorContext:I

.field private final blacklist mOemError:I

.field private final blacklist mVendorError:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaDrm$SessionException;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    iput p3, p0, Landroid/media/MediaDrm$SessionException;->mVendorError:I

    iput p4, p0, Landroid/media/MediaDrm$SessionException;->mOemError:I

    iput p5, p0, Landroid/media/MediaDrm$SessionException;->mErrorContext:I

    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    return p0
.end method

.method public whitelist getErrorContext()I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$SessionException;->mErrorContext:I

    return p0
.end method

.method public whitelist getOemError()I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$SessionException;->mOemError:I

    return p0
.end method

.method public whitelist getVendorError()I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$SessionException;->mVendorError:I

    return p0
.end method

.method public whitelist isTransient()Z
    .locals 1

    iget p0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
