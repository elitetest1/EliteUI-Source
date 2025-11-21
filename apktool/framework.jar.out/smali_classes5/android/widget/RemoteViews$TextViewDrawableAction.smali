.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field blacklist mD1:I

.field blacklist mD2:I

.field blacklist mD3:I

.field blacklist mD4:I

.field blacklist mDrawablesLoaded:Z

.field blacklist mI1:Landroid/graphics/drawable/Icon;

.field blacklist mI2:Landroid/graphics/drawable/Icon;

.field blacklist mI3:Landroid/graphics/drawable/Icon;

.field blacklist mI4:Landroid/graphics/drawable/Icon;

.field blacklist mId1:Landroid/graphics/drawable/Drawable;

.field blacklist mId2:Landroid/graphics/drawable/Drawable;

.field blacklist mId3:Landroid/graphics/drawable/Drawable;

.field blacklist mId4:Landroid/graphics/drawable/Drawable;

.field blacklist mIsRelative:Z

.field blacklist mUseIcons:Z


# direct methods
.method public constructor blacklist <init>(IZIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, 0x10b00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v5, 0x10b00000003L

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const-wide v7, 0x10b00000011L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v9, -0x1

    const/4 v12, 0x1

    if-eq v2, v9, :cond_e

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    if-eq v2, v12, :cond_d

    const/4 v13, 0x2

    if-eq v2, v13, :cond_c

    const-string v14, "Unhandled field while reading RemoteViews proto!\n"

    const-string v15, "RemoteViews"

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v2, v11, :cond_6

    if-eq v2, v10, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    if-eq v2, v9, :cond_5

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    if-eq v2, v12, :cond_4

    if-eq v2, v13, :cond_3

    if-eq v2, v11, :cond_2

    if-eq v2, v10, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-static {v0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v12, 0x10b00000003L

    invoke-static {v0, v12, v13}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v9

    invoke-virtual {v2, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, -0x1

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v12, 0x10b00000002L

    invoke-static {v0, v12, v13}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v9

    const/4 v12, 0x2

    invoke-virtual {v2, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v13, v12

    const/4 v9, -0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v12, 0x10b00000001L

    invoke-static {v0, v12, v13}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v2, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, -0x1

    :goto_3
    const/4 v13, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    const-wide v5, 0x10b00000003L

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    :goto_4
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_b

    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    if-eq v2, v12, :cond_a

    const/4 v12, 0x2

    if-eq v2, v12, :cond_9

    if-eq v2, v11, :cond_8

    if-eq v2, v10, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const-wide v12, 0x10b00000003L

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v5, 0x10900000004L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_8
    const-wide v12, 0x10b00000003L

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v5, 0x10900000003L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    const-wide v12, 0x10b00000003L

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v5, 0x10900000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    const/4 v12, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x2

    const-wide v12, 0x10b00000003L

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-wide v9, 0x10900000001L

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v12, v6

    const/4 v10, 0x4

    goto/16 :goto_4

    :cond_b
    const-wide v12, 0x10b00000003L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    move-wide v5, v12

    goto :goto_6

    :cond_c
    move-wide v12, v5

    const-wide v2, 0x10800000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    :cond_d
    move-wide v12, v5

    const-wide v9, 0x10900000001L

    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_6
    const-wide v3, 0x10b00000004L

    goto/16 :goto_0

    :cond_e
    const-wide v9, 0x10900000001L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    const/4 v6, 0x1

    new-array v0, v6, [J

    const/4 v2, 0x0

    aput-wide v9, v0, v2

    invoke-static {v1, v0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const-wide v1, 0x10b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-wide v5, 0x10800000002L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lez p0, :cond_0

    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/graphics/drawable/Icon;

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    return-object v2

    :cond_0
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2, v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2, v1, v7}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2, v1, v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p3

    move v7, p3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {p2, v1, v5}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v2

    :cond_4
    move v8, v2

    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    return-object v2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 4

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    if-nez p3, :cond_3

    move-object p3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    iget-boolean p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz p0, :cond_7

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_8
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz p2, :cond_9

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    :cond_9
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public blacklist canWriteToProto()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o getActionTag()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .locals 8

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz p2, :cond_1

    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    move-object v0, v1

    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_2

    move-object p2, p3

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_1
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_3

    move-object p2, p3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_4

    move-object p2, p3

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_3
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_4
    iput-object p3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_6
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-nez p2, :cond_7

    move-object p2, p3

    goto :goto_5

    :cond_7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_5
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-nez p2, :cond_8

    move-object p2, p3

    goto :goto_6

    :cond_8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_6
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-nez p2, :cond_9

    move-object p2, p3

    goto :goto_7

    :cond_9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_7
    iput-object p2, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-nez p0, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_8
    iput-object p3, v0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    return p0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 10

    const-wide v0, 0x10b00000011L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10800000002L

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v4, v5, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const-wide v4, 0x10b00000003L

    if-eqz p2, :cond_4

    const-wide v2, 0x10b00000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_0

    const-wide v8, 0x10b00000001L

    invoke-static {p1, p3, p2, v8, v9}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    :cond_0
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_1

    const-wide v8, 0x10b00000002L

    invoke-static {p1, p3, p2, v8, v9}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    :cond_1
    iget-object p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_2

    invoke-static {p1, p3, p2, v4, v5}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    :cond_2
    iget-object p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_3

    invoke-static {p1, p3, p0, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    :cond_3
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-eqz p2, :cond_5

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_5
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-eqz p2, :cond_6

    const-wide v2, 0x10900000002L

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_6
    iget p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-eqz p2, :cond_7

    const-wide v2, 0x10900000003L

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_7
    iget p0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-eqz p0, :cond_8

    const-wide v2, 0x10900000004L

    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
