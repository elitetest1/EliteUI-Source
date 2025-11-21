.class public final Landroid/hardware/input/KeyGlyphMap;
.super Ljava/lang/Object;
.source "KeyGlyphMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyGlyphMap$KeyCombination;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyGlyphMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "KeyGlyphMap"


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mFunctionRowKeys:[I

.field private final blacklist mHardwareShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyGlyphs:Landroid/util/SparseIntArray;

.field private final blacklist mModifierGlyphs:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/KeyGlyphMap$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyGlyphMap$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyGlyphMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;[ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            "[I",
            "Ljava/util/Map<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    iput-object p3, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    iput-object p4, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    iput-object p5, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-class v1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private blacklist getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "KeyGlyphMap"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    const v3, 0xc0080

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Resource not found for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Package name not found for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDrawableForKeycode(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyGlyphMap;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDrawableForModifier(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8f

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    move p2, v1

    goto :goto_0

    :pswitch_0
    const/16 p2, 0x8

    goto :goto_0

    :pswitch_1
    const/high16 p2, 0x10000

    goto :goto_0

    :pswitch_2
    const/high16 p2, 0x400000

    goto :goto_0

    :pswitch_3
    const/high16 p2, 0x100000

    goto :goto_0

    :pswitch_4
    const/16 p2, 0x1000

    goto :goto_0

    :pswitch_5
    const/4 p2, 0x1

    goto :goto_0

    :pswitch_6
    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x200000

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    :goto_0
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyGlyphMap;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getDrawableForModifierState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyGlyphMap;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFunctionRowKeys()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    return-object p0
.end method

.method public blacklist getHardwareShortcuts()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyGlyphMap{mComponentName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyGlyphs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mModifierGlyphs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFunctionRowKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHardwareShortcuts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
