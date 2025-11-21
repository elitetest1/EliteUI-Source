.class public Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "CoreSemantics.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilityModifier;


# instance fields
.field public blacklist mClickable:Z

.field public blacklist mContentDescriptionId:I

.field public blacklist mEnabled:Z

.field public blacklist mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

.field public blacklist mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public blacklist mStateDescriptionId:I

.field public blacklist mTextId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    return-void
.end method

.method private blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->fromInt(I)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object p0
.end method

.method public blacklist getOpCode()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object p0
.end method

.method public blacklist getStateDescriptionId()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->A11Y:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "CoreSemantics"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contentDescriptionId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "role"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "stateDescriptionId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "mode"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "clickable"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SEMANTICS = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SEMANTICS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    const-string v3, " "

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    if-lez v1, :cond_2

    const-string v1, " contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    if-lez v1, :cond_3

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    if-lez v1, :cond_4

    const-string v1, " stateDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    if-nez v1, :cond_5

    const-string v1, " disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    if-eqz p0, :cond_6

    const-string p0, " clickable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    return-void
.end method
