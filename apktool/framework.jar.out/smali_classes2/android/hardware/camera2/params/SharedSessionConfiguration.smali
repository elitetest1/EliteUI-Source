.class public final Landroid/hardware/camera2/params/SharedSessionConfiguration;
.super Ljava/lang/Object;
.source "SharedSessionConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist SHARED_OUTPUT_CONFIG_NUM_OF_ENTRIES:I = 0xb

.field private static final blacklist TAG:Ljava/lang/String; = "SharedSessionConfiguration"


# instance fields
.field private blacklist mColorSpace:I

.field private final blacklist mOutputStreamConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I[J)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    move/from16 v2, p1

    iput v2, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const-string v5, "SharedSessionConfiguration"

    const/16 v6, 0xb

    if-lt v2, v6, :cond_4

    aget-wide v6, v1, v4

    long-to-int v9, v6

    add-int/lit8 v6, v4, 0x1

    aget-wide v6, v1, v6

    long-to-int v6, v6

    add-int/lit8 v7, v4, 0x2

    aget-wide v7, v1, v7

    long-to-int v7, v7

    add-int/lit8 v8, v4, 0x3

    aget-wide v10, v1, v8

    long-to-int v11, v10

    add-int/lit8 v8, v4, 0x4

    aget-wide v12, v1, v8

    long-to-int v12, v12

    add-int/lit8 v8, v4, 0x5

    aget-wide v13, v1, v8

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v13, v8

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    add-int/lit8 v8, v4, 0x6

    move v10, v4

    aget-wide v3, v1, v8

    long-to-int v14, v3

    add-int/lit8 v4, v10, 0x7

    aget-wide v3, v1, v4

    long-to-int v3, v3

    add-int/lit8 v4, v10, 0x8

    aget-wide v17, v1, v4

    add-int/lit8 v4, v10, 0x9

    aget-wide v19, v1, v4

    add-int/lit8 v4, v10, 0xa

    move v8, v2

    aget-wide v1, p2, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    add-int/lit8 v2, v8, -0xb

    add-int/lit8 v4, v10, 0xb

    if-ge v2, v1, :cond_1

    const-string v0, "Number of remaining data in shared configuration is less than physical camera id length . Malformed metadata android.info.availableSharedOutputConfigurations."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_3

    add-int v10, v4, v8

    move/from16 v22, v1

    move/from16 v21, v2

    aget-wide v1, p2, v10

    cmp-long v10, v1, v15

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    long-to-int v1, v1

    int-to-char v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v21

    move/from16 v1, v22

    goto :goto_2

    :cond_3
    move/from16 v22, v1

    move/from16 v21, v2

    :goto_3
    new-instance v8, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v6, v7}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v15, v3

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v1

    invoke-direct/range {v8 .. v20}, Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;-><init>(ILandroid/util/Size;IIZIIJJLjava/lang/String;)V

    iget-object v1, v0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v4, v4, v22

    sub-int v2, v21, v22

    move-object/from16 v1, p2

    goto/16 :goto_0

    :cond_4
    move v8, v2

    :goto_4
    if-eqz v2, :cond_5

    const-string v0, "Unexpected entries left in shared output configuration. Malformed metadata android.info.availableSharedOutputConfigurations."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget p0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mColorSpace:I

    aget-object p0, v0, p0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getOutputStreamsInformation()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/SharedSessionConfiguration$SharedOutputConfiguration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/camera2/params/SharedSessionConfiguration;->mOutputStreamConfigurations:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
