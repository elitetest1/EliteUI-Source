.class public Landroid/view/SurfaceControlActivePicture;
.super Ljava/lang/Object;
.source "SurfaceControlActivePicture.java"


# instance fields
.field private final blacklist mLayerId:I

.field private final blacklist mOwnerUid:I

.field private final blacklist mPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;


# direct methods
.method private constructor blacklist <init>(IILandroid/media/quality/PictureProfileHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/SurfaceControlActivePicture;->mLayerId:I

    iput p2, p0, Landroid/view/SurfaceControlActivePicture;->mOwnerUid:I

    iput-object p3, p0, Landroid/view/SurfaceControlActivePicture;->mPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    return-void
.end method


# virtual methods
.method public blacklist getLayerId()I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControlActivePicture;->mLayerId:I

    return p0
.end method

.method public blacklist getOwnerUid()I
    .locals 0

    iget p0, p0, Landroid/view/SurfaceControlActivePicture;->mOwnerUid:I

    return p0
.end method

.method public blacklist getPictureProfileHandle()Landroid/media/quality/PictureProfileHandle;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceControlActivePicture;->mPictureProfileHandle:Landroid/media/quality/PictureProfileHandle;

    return-object p0
.end method
