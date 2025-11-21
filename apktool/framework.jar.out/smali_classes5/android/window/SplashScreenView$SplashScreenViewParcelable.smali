.class public Landroid/window/SplashScreenView$SplashScreenViewParcelable;
.super Ljava/lang/Object;
.source "SplashScreenView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenViewParcelable"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/SplashScreenView$SplashScreenViewParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBrandingHeight:I

.field private blacklist mBrandingWidth:I

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private blacklist mIconAnimationDurationMillis:J

.field private blacklist mIconAnimationStartMillis:J

.field private blacklist mIconBackground:Landroid/graphics/Bitmap;

.field private blacklist mIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIconSize:I

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingHeight(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I
    .locals 0

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingWidth(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I
    .locals 0

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientCallback(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/os/RemoteCallback;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAnimationDurationMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J
    .locals 2

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAnimationStartMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J
    .locals 2

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfacePackage(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable$1;

    invoke-direct {v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable$1;-><init>()V

    sput-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->readParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/SplashScreenView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/SplashScreenView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result v2

    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/window/SplashScreenView;->-$$Nest$fgetmSurfacePackageCopy(Landroid/window/SplashScreenView;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    iput-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    iget v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    invoke-direct {p0, v0, v1, v2}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawableWithSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationStart()Ljava/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationStart()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    :cond_4
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    :cond_5
    return-void
.end method

.method private blacklist copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawableWithSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist copyDrawableWithSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private blacklist readParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    iput-object p1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public blacklist clearIfNeeded()V
    .locals 2

    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist getBackgroundColor()I
    .locals 0

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    return p0
.end method

.method blacklist getIconSize()I
    .locals 0

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    return p0
.end method

.method public blacklist setClientCallback(Landroid/os/RemoteCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
