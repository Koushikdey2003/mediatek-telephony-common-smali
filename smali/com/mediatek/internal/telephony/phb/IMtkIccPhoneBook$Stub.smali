.class public abstract Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IMtkIccPhoneBook.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

.field static final blacklist TRANSACTION_addContactToGroup:I = 0xf

.field static final blacklist TRANSACTION_colorAddAdnRecordsInEfBySearchExUsingSubId:I = 0x27

.field static final blacklist TRANSACTION_colorGetAdnEmailLenUsingSubId:I = 0x2b

.field static final blacklist TRANSACTION_colorGetSimNameLenUsingSubId:I = 0x26

.field static final blacklist TRANSACTION_colorGetSimPhonebookAllSpace:I = 0x2c

.field static final blacklist TRANSACTION_colorGetSimPhonebookUsedSpace:I = 0x2d

.field static final blacklist TRANSACTION_colorISPhoneBookReady:I = 0x29

.field static final blacklist TRANSACTION_colorIsPhoneBookPbrExist:I = 0x2a

.field static final blacklist TRANSACTION_colorUpdateAdnRecordsInEfByIndexExUsingSubId:I = 0x28

.field static final blacklist TRANSACTION_getAdnRecordsCapacity:I = 0x24

.field static final blacklist TRANSACTION_getAdnRecordsCapacityForSubscriber:I = 0x25

.field static final blacklist TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final blacklist TRANSACTION_getAdnRecordsInEfForSubscriber:I = 0x2

.field static final blacklist TRANSACTION_getAnrCount:I = 0x19

.field static final blacklist TRANSACTION_getEmailCount:I = 0x1a

.field static final blacklist TRANSACTION_getPhonebookMemStorageExt:I = 0x22

.field static final blacklist TRANSACTION_getSneRecordLen:I = 0x20

.field static final blacklist TRANSACTION_getUpbDone:I = 0x23

.field static final blacklist TRANSACTION_getUsimAasById:I = 0x17

.field static final blacklist TRANSACTION_getUsimAasList:I = 0x16

.field static final blacklist TRANSACTION_getUsimAasMaxCount:I = 0x1b

.field static final blacklist TRANSACTION_getUsimAasMaxNameLen:I = 0x1c

.field static final blacklist TRANSACTION_getUsimGroupById:I = 0xb

.field static final blacklist TRANSACTION_getUsimGroups:I = 0xa

.field static final blacklist TRANSACTION_getUsimGrpMaxCount:I = 0x15

.field static final blacklist TRANSACTION_getUsimGrpMaxNameLen:I = 0x14

.field static final blacklist TRANSACTION_hasExistGroup:I = 0x13

.field static final blacklist TRANSACTION_hasSne:I = 0x1f

.field static final blacklist TRANSACTION_insertUsimAas:I = 0x18

.field static final blacklist TRANSACTION_insertUsimGroup:I = 0xd

.field static final blacklist TRANSACTION_isAdnAccessible:I = 0x21

.field static final blacklist TRANSACTION_isPhbReady:I = 0x9

.field static final blacklist TRANSACTION_moveContactFromGroupsToGroups:I = 0x12

.field static final blacklist TRANSACTION_removeContactFromGroup:I = 0x10

.field static final blacklist TRANSACTION_removeUsimAasById:I = 0x1e

.field static final blacklist TRANSACTION_removeUsimGroupById:I = 0xc

.field static final blacklist TRANSACTION_updateAdnRecordsInEfByIndexWithError:I = 0x5

.field static final blacklist TRANSACTION_updateAdnRecordsInEfBySearchWithError:I = 0x3

.field static final blacklist TRANSACTION_updateContactToGroups:I = 0x11

.field static final blacklist TRANSACTION_updateUsimAas:I = 0x1d

.field static final blacklist TRANSACTION_updateUsimGroup:I = 0xe

.field static final blacklist TRANSACTION_updateUsimPBRecordsByIndexWithError:I = 0x7

.field static final blacklist TRANSACTION_updateUsimPBRecordsBySearchWithError:I = 0x8

.field static final blacklist TRANSACTION_updateUsimPBRecordsInEfByIndexWithError:I = 0x6

.field static final blacklist TRANSACTION_updateUsimPBRecordsInEfBySearchWithError:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 672
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 673
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 681
    if-nez p0, :cond_0

    .line 682
    const/4 v0, 0x0

    return-object v0

    .line 684
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 685
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    if-eqz v1, :cond_1

    .line 686
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    return-object v1

    .line 688
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    .locals 1

    .line 2888
    sget-object v0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    .line 2878
    sget-object v0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    if-nez v0, :cond_1

    .line 2881
    if-eqz p0, :cond_0

    .line 2882
    sput-object p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    .line 2883
    const/4 v0, 0x1

    return v0

    .line 2885
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2879
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asBinder()Landroid/os/IBinder;
    .locals 0

    .line 692
    return-object p0
.end method

.method public whitelist test-api onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    .line 697
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_3

    packed-switch v14, :pswitch_data_0

    .line 1315
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1305
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1308
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorGetSimPhonebookUsedSpace(I)I

    move-result v1

    .line 1309
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    return v10

    .line 1295
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1298
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorGetSimPhonebookAllSpace(I)I

    move-result v1

    .line 1299
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    return v10

    .line 1285
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1288
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorGetAdnEmailLenUsingSubId(I)I

    move-result v1

    .line 1289
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    return v10

    .line 1275
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1278
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorIsPhoneBookPbrExist(I)Z

    move-result v1

    .line 1279
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    return v10

    .line 1265
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1268
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorISPhoneBookReady(I)Z

    move-result v1

    .line 1269
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    return v10

    .line 1241
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1245
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1247
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1249
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1251
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1253
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1255
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1257
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1258
    .local v22, "_arg7":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorUpdateAdnRecordsInEfByIndexExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1259
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    return v10

    .line 1215
    .end local v0    # "_result":Z
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1219
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1221
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1223
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1225
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1227
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1229
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1231
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1233
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1234
    .local v24, "_arg8":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorAddAdnRecordsInEfBySearchExUsingSubId(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1235
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    return v10

    .line 1205
    .end local v0    # "_result":I
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1208
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->colorGetSimNameLenUsingSubId(I)I

    move-result v1

    .line 1209
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    return v10

    .line 1195
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1198
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v1

    .line 1199
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1201
    return v10

    .line 1187
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_9
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsCapacity()[I

    move-result-object v0

    .line 1189
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1191
    return v10

    .line 1177
    .end local v0    # "_result":[I
    :pswitch_a
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1180
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUpbDone(I)I

    move-result v1

    .line 1181
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    return v10

    .line 1167
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1170
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v1

    .line 1171
    .local v1, "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1173
    return v10

    .line 1157
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    :pswitch_c
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1160
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->isAdnAccessible(I)Z

    move-result v1

    .line 1161
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    return v10

    .line 1147
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1150
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getSneRecordLen(I)I

    move-result v1

    .line 1151
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    return v10

    .line 1137
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1140
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->hasSne(I)Z

    move-result v1

    .line 1141
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    return v10

    .line 1123
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1127
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1129
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1130
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->removeUsimAasById(III)Z

    move-result v3

    .line 1131
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    return v10

    .line 1107
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1111
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1113
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1115
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimAas(IIILjava/lang/String;)Z

    move-result v4

    .line 1117
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    return v10

    .line 1097
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_11
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1100
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasMaxNameLen(I)I

    move-result v1

    .line 1101
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    return v10

    .line 1087
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_12
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1090
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasMaxCount(I)I

    move-result v1

    .line 1091
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    return v10

    .line 1077
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_13
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getEmailCount(I)I

    move-result v1

    .line 1081
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    return v10

    .line 1067
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1070
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAnrCount(I)I

    move-result v1

    .line 1071
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    return v10

    .line 1055
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1059
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->insertUsimAas(ILjava/lang/String;)I

    move-result v2

    .line 1061
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    return v10

    .line 1043
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1047
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1048
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1051
    return v10

    .line 1033
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1036
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasList(I)Ljava/util/List;

    move-result-object v1

    .line 1037
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1039
    return v10

    .line 1023
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    :pswitch_18
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1026
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGrpMaxCount(I)I

    move-result v1

    .line 1027
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    return v10

    .line 1013
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1016
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGrpMaxNameLen(I)I

    move-result v1

    .line 1017
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    return v10

    .line 1001
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1005
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->hasExistGroup(ILjava/lang/String;)I

    move-result v2

    .line 1007
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    return v10

    .line 985
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1b
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 993
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 994
    .local v3, "_arg3":[I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->moveContactFromGroupsToGroups(II[I[I)Z

    move-result v4

    .line 995
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    return v10

    .line 971
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":Z
    :pswitch_1c
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 975
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 977
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 978
    .restart local v2    # "_arg2":[I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateContactToGroups(II[I)Z

    move-result v3

    .line 979
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    return v10

    .line 957
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":Z
    :pswitch_1d
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 961
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 963
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->removeContactFromGroup(III)Z

    move-result v3

    .line 965
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    return v10

    .line 943
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 947
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 949
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 950
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->addContactToGroup(III)Z

    move-result v3

    .line 951
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    return v10

    .line 929
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1f
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimGroup(IILjava/lang/String;)I

    move-result v3

    .line 937
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    return v10

    .line 917
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->insertUsimGroup(ILjava/lang/String;)I

    move-result v2

    .line 923
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    return v10

    .line 905
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_21
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 910
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->removeUsimGroupById(II)Z

    move-result v2

    .line 911
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    return v10

    .line 893
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 897
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .restart local v1    # "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGroupById(II)Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    return v10

    .line 883
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 886
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGroups(I)Ljava/util/List;

    move-result-object v1

    .line 887
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 889
    return v10

    .line 873
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    :pswitch_24
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 876
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->isPhbReady(I)Z

    move-result v1

    .line 877
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    return v10

    .line 847
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 851
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    sget-object v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .local v2, "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_0

    .line 857
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_0
    const/4 v2, 0x0

    .line 860
    .restart local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .local v3, "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_1

    .line 864
    .end local v3    # "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_1
    const/4 v3, 0x0

    .line 866
    .restart local v3    # "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_1
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v4

    .line 867
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    return v10

    .line 826
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "_result":I
    :pswitch_26
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 830
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 832
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 833
    sget-object v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .restart local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_2

    .line 836
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_2
    const/4 v2, 0x0

    .line 839
    .restart local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 840
    .local v3, "_arg3":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v4

    .line 841
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    return v10

    .line 802
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_27
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 806
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 808
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 810
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 812
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 814
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 816
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    .line 818
    .local v21, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 819
    .local v22, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 820
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    return v10

    .line 782
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":[Ljava/lang/String;
    .end local v22    # "_arg7":I
    :pswitch_28
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 786
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 788
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 790
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 792
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 794
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 795
    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 796
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    return v10

    .line 750
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 754
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 756
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 758
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 760
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 762
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 764
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 766
    .local v22, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 768
    .restart local v23    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 770
    .restart local v24    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 772
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 774
    .local v26, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    .line 775
    .local v27, "_arg11":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v28, v10

    move-object/from16 v10, v25

    move-object v14, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v14, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object v13, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 776
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    return v28

    .line 728
    .end local v0    # "_result":I
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":[Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":Ljava/lang/String;
    .end local v26    # "_arg10":Ljava/lang/String;
    .end local v27    # "_arg11":[Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move/from16 v28, v10

    move-object v14, v11

    move-object v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 732
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 734
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 736
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 738
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 742
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 743
    .local v17, "_arg6":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 744
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    return v28

    .line 716
    .end local v0    # "_result":I
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg4":Ljava/lang/String;
    .end local v14    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2b
    move/from16 v28, v10

    move-object v14, v11

    move-object v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 720
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    .restart local v1    # "_arg1":I
    move-object/from16 v2, p0

    move-object v3, v13

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v4

    .line 722
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 724
    return v28

    .line 706
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move/from16 v28, v10

    move-object v14, v11

    move-object v3, v12

    move-object v2, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 709
    .restart local v0    # "_arg0":I
    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    .line 710
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 712
    return v28

    .line 701
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local v14    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_3
    move/from16 v28, v10

    move-object v14, v11

    move-object v3, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v14    # "descriptor":Ljava/lang/String;
    invoke-virtual {v3, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    return v28

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
