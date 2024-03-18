public extension Api.messages {
    enum Reactions: TypeConstructorDescription {
        case reactions(hash: Int64, reactions: [Api.Reaction])
        case reactionsNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .reactions(let hash, let reactions):
                    if boxed {
                        buffer.appendInt32(-352454890)
                    }
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(reactions.count))
                    for item in reactions {
                        item.serialize(buffer, true)
                    }
                    break
                case .reactionsNotModified:
                    if boxed {
                        buffer.appendInt32(-1334846497)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .reactions(let hash, let reactions):
                return ("reactions", [("hash", hash as Any), ("reactions", reactions as Any)])
                case .reactionsNotModified:
                return ("reactionsNotModified", [])
    }
    }
    
        public static func parse_reactions(_ reader: BufferReader) -> Reactions? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: [Api.Reaction]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Reaction.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.messages.Reactions.reactions(hash: _1!, reactions: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_reactionsNotModified(_ reader: BufferReader) -> Reactions? {
            return Api.messages.Reactions.reactionsNotModified
        }
    
    }
}
public extension Api.messages {
    enum RecentStickers: TypeConstructorDescription {
        case recentStickers(hash: Int64, packs: [Api.StickerPack], stickers: [Api.Document], dates: [Int32])
        case recentStickersNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .recentStickers(let hash, let packs, let stickers, let dates):
                    if boxed {
                        buffer.appendInt32(-1999405994)
                    }
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(packs.count))
                    for item in packs {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(stickers.count))
                    for item in stickers {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(dates.count))
                    for item in dates {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
                case .recentStickersNotModified:
                    if boxed {
                        buffer.appendInt32(186120336)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .recentStickers(let hash, let packs, let stickers, let dates):
                return ("recentStickers", [("hash", hash as Any), ("packs", packs as Any), ("stickers", stickers as Any), ("dates", dates as Any)])
                case .recentStickersNotModified:
                return ("recentStickersNotModified", [])
    }
    }
    
        public static func parse_recentStickers(_ reader: BufferReader) -> RecentStickers? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: [Api.StickerPack]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.StickerPack.self)
            }
            var _3: [Api.Document]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
            }
            var _4: [Int32]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.messages.RecentStickers.recentStickers(hash: _1!, packs: _2!, stickers: _3!, dates: _4!)
            }
            else {
                return nil
            }
        }
        public static func parse_recentStickersNotModified(_ reader: BufferReader) -> RecentStickers? {
            return Api.messages.RecentStickers.recentStickersNotModified
        }
    
    }
}
public extension Api.messages {
    enum SavedDialogs: TypeConstructorDescription {
        case savedDialogs(dialogs: [Api.SavedDialog], messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
        case savedDialogsNotModified(count: Int32)
        case savedDialogsSlice(count: Int32, dialogs: [Api.SavedDialog], messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .savedDialogs(let dialogs, let messages, let chats, let users):
                    if boxed {
                        buffer.appendInt32(-130358751)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(dialogs.count))
                    for item in dialogs {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
                case .savedDialogsNotModified(let count):
                    if boxed {
                        buffer.appendInt32(-1071681560)
                    }
                    serializeInt32(count, buffer: buffer, boxed: false)
                    break
                case .savedDialogsSlice(let count, let dialogs, let messages, let chats, let users):
                    if boxed {
                        buffer.appendInt32(1153080793)
                    }
                    serializeInt32(count, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(dialogs.count))
                    for item in dialogs {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .savedDialogs(let dialogs, let messages, let chats, let users):
                return ("savedDialogs", [("dialogs", dialogs as Any), ("messages", messages as Any), ("chats", chats as Any), ("users", users as Any)])
                case .savedDialogsNotModified(let count):
                return ("savedDialogsNotModified", [("count", count as Any)])
                case .savedDialogsSlice(let count, let dialogs, let messages, let chats, let users):
                return ("savedDialogsSlice", [("count", count as Any), ("dialogs", dialogs as Any), ("messages", messages as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_savedDialogs(_ reader: BufferReader) -> SavedDialogs? {
            var _1: [Api.SavedDialog]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SavedDialog.self)
            }
            var _2: [Api.Message]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
            }
            var _3: [Api.Chat]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _4: [Api.User]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.messages.SavedDialogs.savedDialogs(dialogs: _1!, messages: _2!, chats: _3!, users: _4!)
            }
            else {
                return nil
            }
        }
        public static func parse_savedDialogsNotModified(_ reader: BufferReader) -> SavedDialogs? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.messages.SavedDialogs.savedDialogsNotModified(count: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_savedDialogsSlice(_ reader: BufferReader) -> SavedDialogs? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.SavedDialog]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SavedDialog.self)
            }
            var _3: [Api.Message]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
            }
            var _4: [Api.Chat]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _5: [Api.User]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.messages.SavedDialogs.savedDialogsSlice(count: _1!, dialogs: _2!, messages: _3!, chats: _4!, users: _5!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum SavedGifs: TypeConstructorDescription {
        case savedGifs(hash: Int64, gifs: [Api.Document])
        case savedGifsNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .savedGifs(let hash, let gifs):
                    if boxed {
                        buffer.appendInt32(-2069878259)
                    }
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(gifs.count))
                    for item in gifs {
                        item.serialize(buffer, true)
                    }
                    break
                case .savedGifsNotModified:
                    if boxed {
                        buffer.appendInt32(-402498398)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .savedGifs(let hash, let gifs):
                return ("savedGifs", [("hash", hash as Any), ("gifs", gifs as Any)])
                case .savedGifsNotModified:
                return ("savedGifsNotModified", [])
    }
    }
    
        public static func parse_savedGifs(_ reader: BufferReader) -> SavedGifs? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: [Api.Document]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.messages.SavedGifs.savedGifs(hash: _1!, gifs: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_savedGifsNotModified(_ reader: BufferReader) -> SavedGifs? {
            return Api.messages.SavedGifs.savedGifsNotModified
        }
    
    }
}
public extension Api.messages {
    enum SavedReactionTags: TypeConstructorDescription {
        case savedReactionTags(tags: [Api.SavedReactionTag], hash: Int64)
        case savedReactionTagsNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .savedReactionTags(let tags, let hash):
                    if boxed {
                        buffer.appendInt32(844731658)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(tags.count))
                    for item in tags {
                        item.serialize(buffer, true)
                    }
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    break
                case .savedReactionTagsNotModified:
                    if boxed {
                        buffer.appendInt32(-2003084817)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .savedReactionTags(let tags, let hash):
                return ("savedReactionTags", [("tags", tags as Any), ("hash", hash as Any)])
                case .savedReactionTagsNotModified:
                return ("savedReactionTagsNotModified", [])
    }
    }
    
        public static func parse_savedReactionTags(_ reader: BufferReader) -> SavedReactionTags? {
            var _1: [Api.SavedReactionTag]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SavedReactionTag.self)
            }
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.messages.SavedReactionTags.savedReactionTags(tags: _1!, hash: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_savedReactionTagsNotModified(_ reader: BufferReader) -> SavedReactionTags? {
            return Api.messages.SavedReactionTags.savedReactionTagsNotModified
        }
    
    }
}
public extension Api.messages {
    enum SearchCounter: TypeConstructorDescription {
        case searchCounter(flags: Int32, filter: Api.MessagesFilter, count: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .searchCounter(let flags, let filter, let count):
                    if boxed {
                        buffer.appendInt32(-398136321)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    filter.serialize(buffer, true)
                    serializeInt32(count, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .searchCounter(let flags, let filter, let count):
                return ("searchCounter", [("flags", flags as Any), ("filter", filter as Any), ("count", count as Any)])
    }
    }
    
        public static func parse_searchCounter(_ reader: BufferReader) -> SearchCounter? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.MessagesFilter?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.MessagesFilter
            }
            var _3: Int32?
            _3 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.messages.SearchCounter.searchCounter(flags: _1!, filter: _2!, count: _3!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum SearchResultsCalendar: TypeConstructorDescription {
        case searchResultsCalendar(flags: Int32, count: Int32, minDate: Int32, minMsgId: Int32, offsetIdOffset: Int32?, periods: [Api.SearchResultsCalendarPeriod], messages: [Api.Message], chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .searchResultsCalendar(let flags, let count, let minDate, let minMsgId, let offsetIdOffset, let periods, let messages, let chats, let users):
                    if boxed {
                        buffer.appendInt32(343859772)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(count, buffer: buffer, boxed: false)
                    serializeInt32(minDate, buffer: buffer, boxed: false)
                    serializeInt32(minMsgId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(offsetIdOffset!, buffer: buffer, boxed: false)}
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(periods.count))
                    for item in periods {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .searchResultsCalendar(let flags, let count, let minDate, let minMsgId, let offsetIdOffset, let periods, let messages, let chats, let users):
                return ("searchResultsCalendar", [("flags", flags as Any), ("count", count as Any), ("minDate", minDate as Any), ("minMsgId", minMsgId as Any), ("offsetIdOffset", offsetIdOffset as Any), ("periods", periods as Any), ("messages", messages as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_searchResultsCalendar(_ reader: BufferReader) -> SearchResultsCalendar? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            _3 = reader.readInt32()
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_5 = reader.readInt32() }
            var _6: [Api.SearchResultsCalendarPeriod]?
            if let _ = reader.readInt32() {
                _6 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SearchResultsCalendarPeriod.self)
            }
            var _7: [Api.Message]?
            if let _ = reader.readInt32() {
                _7 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Message.self)
            }
            var _8: [Api.Chat]?
            if let _ = reader.readInt32() {
                _8 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _9: [Api.User]?
            if let _ = reader.readInt32() {
                _9 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 1) == 0) || _5 != nil
            let _c6 = _6 != nil
            let _c7 = _7 != nil
            let _c8 = _8 != nil
            let _c9 = _9 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 {
                return Api.messages.SearchResultsCalendar.searchResultsCalendar(flags: _1!, count: _2!, minDate: _3!, minMsgId: _4!, offsetIdOffset: _5, periods: _6!, messages: _7!, chats: _8!, users: _9!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum SearchResultsPositions: TypeConstructorDescription {
        case searchResultsPositions(count: Int32, positions: [Api.SearchResultsPosition])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .searchResultsPositions(let count, let positions):
                    if boxed {
                        buffer.appendInt32(1404185519)
                    }
                    serializeInt32(count, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(positions.count))
                    for item in positions {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .searchResultsPositions(let count, let positions):
                return ("searchResultsPositions", [("count", count as Any), ("positions", positions as Any)])
    }
    }
    
        public static func parse_searchResultsPositions(_ reader: BufferReader) -> SearchResultsPositions? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.SearchResultsPosition]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SearchResultsPosition.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.messages.SearchResultsPositions.searchResultsPositions(count: _1!, positions: _2!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum SentEncryptedMessage: TypeConstructorDescription {
        case sentEncryptedFile(date: Int32, file: Api.EncryptedFile)
        case sentEncryptedMessage(date: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .sentEncryptedFile(let date, let file):
                    if boxed {
                        buffer.appendInt32(-1802240206)
                    }
                    serializeInt32(date, buffer: buffer, boxed: false)
                    file.serialize(buffer, true)
                    break
                case .sentEncryptedMessage(let date):
                    if boxed {
                        buffer.appendInt32(1443858741)
                    }
                    serializeInt32(date, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .sentEncryptedFile(let date, let file):
                return ("sentEncryptedFile", [("date", date as Any), ("file", file as Any)])
                case .sentEncryptedMessage(let date):
                return ("sentEncryptedMessage", [("date", date as Any)])
    }
    }
    
        public static func parse_sentEncryptedFile(_ reader: BufferReader) -> SentEncryptedMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.EncryptedFile?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.EncryptedFile
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.messages.SentEncryptedMessage.sentEncryptedFile(date: _1!, file: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_sentEncryptedMessage(_ reader: BufferReader) -> SentEncryptedMessage? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.messages.SentEncryptedMessage.sentEncryptedMessage(date: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum SponsoredMessages: TypeConstructorDescription {
        case sponsoredMessages(flags: Int32, postsBetween: Int32?, messages: [Api.SponsoredMessage], chats: [Api.Chat], users: [Api.User])
        case sponsoredMessagesEmpty
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .sponsoredMessages(let flags, let postsBetween, let messages, let chats, let users):
                    if boxed {
                        buffer.appendInt32(-907141753)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(postsBetween!, buffer: buffer, boxed: false)}
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(messages.count))
                    for item in messages {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
                case .sponsoredMessagesEmpty:
                    if boxed {
                        buffer.appendInt32(406407439)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .sponsoredMessages(let flags, let postsBetween, let messages, let chats, let users):
                return ("sponsoredMessages", [("flags", flags as Any), ("postsBetween", postsBetween as Any), ("messages", messages as Any), ("chats", chats as Any), ("users", users as Any)])
                case .sponsoredMessagesEmpty:
                return ("sponsoredMessagesEmpty", [])
    }
    }
    
        public static func parse_sponsoredMessages(_ reader: BufferReader) -> SponsoredMessages? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_2 = reader.readInt32() }
            var _3: [Api.SponsoredMessage]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.SponsoredMessage.self)
            }
            var _4: [Api.Chat]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _5: [Api.User]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = (Int(_1!) & Int(1 << 0) == 0) || _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.messages.SponsoredMessages.sponsoredMessages(flags: _1!, postsBetween: _2, messages: _3!, chats: _4!, users: _5!)
            }
            else {
                return nil
            }
        }
        public static func parse_sponsoredMessagesEmpty(_ reader: BufferReader) -> SponsoredMessages? {
            return Api.messages.SponsoredMessages.sponsoredMessagesEmpty
        }
    
    }
}
public extension Api.messages {
    enum StickerSet: TypeConstructorDescription {
        case stickerSet(set: Api.StickerSet, packs: [Api.StickerPack], keywords: [Api.StickerKeyword], documents: [Api.Document])
        case stickerSetNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .stickerSet(let set, let packs, let keywords, let documents):
                    if boxed {
                        buffer.appendInt32(1846886166)
                    }
                    set.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(packs.count))
                    for item in packs {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(keywords.count))
                    for item in keywords {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(documents.count))
                    for item in documents {
                        item.serialize(buffer, true)
                    }
                    break
                case .stickerSetNotModified:
                    if boxed {
                        buffer.appendInt32(-738646805)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .stickerSet(let set, let packs, let keywords, let documents):
                return ("stickerSet", [("set", set as Any), ("packs", packs as Any), ("keywords", keywords as Any), ("documents", documents as Any)])
                case .stickerSetNotModified:
                return ("stickerSetNotModified", [])
    }
    }
    
        public static func parse_stickerSet(_ reader: BufferReader) -> StickerSet? {
            var _1: Api.StickerSet?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.StickerSet
            }
            var _2: [Api.StickerPack]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.StickerPack.self)
            }
            var _3: [Api.StickerKeyword]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.StickerKeyword.self)
            }
            var _4: [Api.Document]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.messages.StickerSet.stickerSet(set: _1!, packs: _2!, keywords: _3!, documents: _4!)
            }
            else {
                return nil
            }
        }
        public static func parse_stickerSetNotModified(_ reader: BufferReader) -> StickerSet? {
            return Api.messages.StickerSet.stickerSetNotModified
        }
    
    }
}
public extension Api.messages {
    enum StickerSetInstallResult: TypeConstructorDescription {
        case stickerSetInstallResultArchive(sets: [Api.StickerSetCovered])
        case stickerSetInstallResultSuccess
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .stickerSetInstallResultArchive(let sets):
                    if boxed {
                        buffer.appendInt32(904138920)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(sets.count))
                    for item in sets {
                        item.serialize(buffer, true)
                    }
                    break
                case .stickerSetInstallResultSuccess:
                    if boxed {
                        buffer.appendInt32(946083368)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .stickerSetInstallResultArchive(let sets):
                return ("stickerSetInstallResultArchive", [("sets", sets as Any)])
                case .stickerSetInstallResultSuccess:
                return ("stickerSetInstallResultSuccess", [])
    }
    }
    
        public static func parse_stickerSetInstallResultArchive(_ reader: BufferReader) -> StickerSetInstallResult? {
            var _1: [Api.StickerSetCovered]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.StickerSetCovered.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.messages.StickerSetInstallResult.stickerSetInstallResultArchive(sets: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_stickerSetInstallResultSuccess(_ reader: BufferReader) -> StickerSetInstallResult? {
            return Api.messages.StickerSetInstallResult.stickerSetInstallResultSuccess
        }
    
    }
}
public extension Api.messages {
    enum Stickers: TypeConstructorDescription {
        case stickers(hash: Int64, stickers: [Api.Document])
        case stickersNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .stickers(let hash, let stickers):
                    if boxed {
                        buffer.appendInt32(816245886)
                    }
                    serializeInt64(hash, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(stickers.count))
                    for item in stickers {
                        item.serialize(buffer, true)
                    }
                    break
                case .stickersNotModified:
                    if boxed {
                        buffer.appendInt32(-244016606)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .stickers(let hash, let stickers):
                return ("stickers", [("hash", hash as Any), ("stickers", stickers as Any)])
                case .stickersNotModified:
                return ("stickersNotModified", [])
    }
    }
    
        public static func parse_stickers(_ reader: BufferReader) -> Stickers? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: [Api.Document]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.messages.Stickers.stickers(hash: _1!, stickers: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_stickersNotModified(_ reader: BufferReader) -> Stickers? {
            return Api.messages.Stickers.stickersNotModified
        }
    
    }
}
public extension Api.messages {
    enum TranscribedAudio: TypeConstructorDescription {
        case transcribedAudio(flags: Int32, transcriptionId: Int64, text: String, trialRemainsNum: Int32?, trialRemainsUntilDate: Int32?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .transcribedAudio(let flags, let transcriptionId, let text, let trialRemainsNum, let trialRemainsUntilDate):
                    if boxed {
                        buffer.appendInt32(-809903785)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt64(transcriptionId, buffer: buffer, boxed: false)
                    serializeString(text, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(trialRemainsNum!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(trialRemainsUntilDate!, buffer: buffer, boxed: false)}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .transcribedAudio(let flags, let transcriptionId, let text, let trialRemainsNum, let trialRemainsUntilDate):
                return ("transcribedAudio", [("flags", flags as Any), ("transcriptionId", transcriptionId as Any), ("text", text as Any), ("trialRemainsNum", trialRemainsNum as Any), ("trialRemainsUntilDate", trialRemainsUntilDate as Any)])
    }
    }
    
        public static func parse_transcribedAudio(_ reader: BufferReader) -> TranscribedAudio? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int64?
            _2 = reader.readInt64()
            var _3: String?
            _3 = parseString(reader)
            var _4: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = reader.readInt32() }
            var _5: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_5 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 1) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.messages.TranscribedAudio.transcribedAudio(flags: _1!, transcriptionId: _2!, text: _3!, trialRemainsNum: _4, trialRemainsUntilDate: _5)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum TranslatedText: TypeConstructorDescription {
        case translateResult(result: [Api.TextWithEntities])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .translateResult(let result):
                    if boxed {
                        buffer.appendInt32(870003448)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(result.count))
                    for item in result {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .translateResult(let result):
                return ("translateResult", [("result", result as Any)])
    }
    }
    
        public static func parse_translateResult(_ reader: BufferReader) -> TranslatedText? {
            var _1: [Api.TextWithEntities]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.TextWithEntities.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.messages.TranslatedText.translateResult(result: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum VotesList: TypeConstructorDescription {
        case votesList(flags: Int32, count: Int32, votes: [Api.MessagePeerVote], chats: [Api.Chat], users: [Api.User], nextOffset: String?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .votesList(let flags, let count, let votes, let chats, let users, let nextOffset):
                    if boxed {
                        buffer.appendInt32(1218005070)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(count, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(votes.count))
                    for item in votes {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    if Int(flags) & Int(1 << 0) != 0 {serializeString(nextOffset!, buffer: buffer, boxed: false)}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .votesList(let flags, let count, let votes, let chats, let users, let nextOffset):
                return ("votesList", [("flags", flags as Any), ("count", count as Any), ("votes", votes as Any), ("chats", chats as Any), ("users", users as Any), ("nextOffset", nextOffset as Any)])
    }
    }
    
        public static func parse_votesList(_ reader: BufferReader) -> VotesList? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: [Api.MessagePeerVote]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessagePeerVote.self)
            }
            var _4: [Api.Chat]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _5: [Api.User]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            var _6: String?
            if Int(_1!) & Int(1 << 0) != 0 {_6 = parseString(reader) }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 0) == 0) || _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.messages.VotesList.votesList(flags: _1!, count: _2!, votes: _3!, chats: _4!, users: _5!, nextOffset: _6)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.messages {
    enum WebPage: TypeConstructorDescription {
        case webPage(webpage: Api.WebPage, chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .webPage(let webpage, let chats, let users):
                    if boxed {
                        buffer.appendInt32(-44166467)
                    }
                    webpage.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .webPage(let webpage, let chats, let users):
                return ("webPage", [("webpage", webpage as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_webPage(_ reader: BufferReader) -> WebPage? {
            var _1: Api.WebPage?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.WebPage
            }
            var _2: [Api.Chat]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.messages.WebPage.webPage(webpage: _1!, chats: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.payments {
    enum BankCardData: TypeConstructorDescription {
        case bankCardData(title: String, openUrls: [Api.BankCardOpenUrl])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .bankCardData(let title, let openUrls):
                    if boxed {
                        buffer.appendInt32(1042605427)
                    }
                    serializeString(title, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(openUrls.count))
                    for item in openUrls {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .bankCardData(let title, let openUrls):
                return ("bankCardData", [("title", title as Any), ("openUrls", openUrls as Any)])
    }
    }
    
        public static func parse_bankCardData(_ reader: BufferReader) -> BankCardData? {
            var _1: String?
            _1 = parseString(reader)
            var _2: [Api.BankCardOpenUrl]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.BankCardOpenUrl.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.payments.BankCardData.bankCardData(title: _1!, openUrls: _2!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.payments {
    enum CheckedGiftCode: TypeConstructorDescription {
        case checkedGiftCode(flags: Int32, fromId: Api.Peer?, giveawayMsgId: Int32?, toId: Int64?, date: Int32, months: Int32, usedDate: Int32?, chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .checkedGiftCode(let flags, let fromId, let giveawayMsgId, let toId, let date, let months, let usedDate, let chats, let users):
                    if boxed {
                        buffer.appendInt32(675942550)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 4) != 0 {fromId!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeInt32(giveawayMsgId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt64(toId!, buffer: buffer, boxed: false)}
                    serializeInt32(date, buffer: buffer, boxed: false)
                    serializeInt32(months, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(usedDate!, buffer: buffer, boxed: false)}
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .checkedGiftCode(let flags, let fromId, let giveawayMsgId, let toId, let date, let months, let usedDate, let chats, let users):
                return ("checkedGiftCode", [("flags", flags as Any), ("fromId", fromId as Any), ("giveawayMsgId", giveawayMsgId as Any), ("toId", toId as Any), ("date", date as Any), ("months", months as Any), ("usedDate", usedDate as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_checkedGiftCode(_ reader: BufferReader) -> CheckedGiftCode? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.Peer?
            if Int(_1!) & Int(1 << 4) != 0 {if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.Peer
            } }
            var _3: Int32?
            if Int(_1!) & Int(1 << 3) != 0 {_3 = reader.readInt32() }
            var _4: Int64?
            if Int(_1!) & Int(1 << 0) != 0 {_4 = reader.readInt64() }
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            var _7: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_7 = reader.readInt32() }
            var _8: [Api.Chat]?
            if let _ = reader.readInt32() {
                _8 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _9: [Api.User]?
            if let _ = reader.readInt32() {
                _9 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = (Int(_1!) & Int(1 << 4) == 0) || _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 3) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 0) == 0) || _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 1) == 0) || _7 != nil
            let _c8 = _8 != nil
            let _c9 = _9 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 {
                return Api.payments.CheckedGiftCode.checkedGiftCode(flags: _1!, fromId: _2, giveawayMsgId: _3, toId: _4, date: _5!, months: _6!, usedDate: _7, chats: _8!, users: _9!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.payments {
    enum ExportedInvoice: TypeConstructorDescription {
        case exportedInvoice(url: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .exportedInvoice(let url):
                    if boxed {
                        buffer.appendInt32(-1362048039)
                    }
                    serializeString(url, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .exportedInvoice(let url):
                return ("exportedInvoice", [("url", url as Any)])
    }
    }
    
        public static func parse_exportedInvoice(_ reader: BufferReader) -> ExportedInvoice? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.payments.ExportedInvoice.exportedInvoice(url: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.payments {
    enum GiveawayInfo: TypeConstructorDescription {
        case giveawayInfo(flags: Int32, startDate: Int32, joinedTooEarlyDate: Int32?, adminDisallowedChatId: Int64?, disallowedCountry: String?)
        case giveawayInfoResults(flags: Int32, startDate: Int32, giftCodeSlug: String?, finishDate: Int32, winnersCount: Int32, activatedCount: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .giveawayInfo(let flags, let startDate, let joinedTooEarlyDate, let adminDisallowedChatId, let disallowedCountry):
                    if boxed {
                        buffer.appendInt32(1130879648)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(startDate, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeInt32(joinedTooEarlyDate!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeInt64(adminDisallowedChatId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 4) != 0 {serializeString(disallowedCountry!, buffer: buffer, boxed: false)}
                    break
                case .giveawayInfoResults(let flags, let startDate, let giftCodeSlug, let finishDate, let winnersCount, let activatedCount):
                    if boxed {
                        buffer.appendInt32(13456752)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(startDate, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeString(giftCodeSlug!, buffer: buffer, boxed: false)}
                    serializeInt32(finishDate, buffer: buffer, boxed: false)
                    serializeInt32(winnersCount, buffer: buffer, boxed: false)
                    serializeInt32(activatedCount, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .giveawayInfo(let flags, let startDate, let joinedTooEarlyDate, let adminDisallowedChatId, let disallowedCountry):
                return ("giveawayInfo", [("flags", flags as Any), ("startDate", startDate as Any), ("joinedTooEarlyDate", joinedTooEarlyDate as Any), ("adminDisallowedChatId", adminDisallowedChatId as Any), ("disallowedCountry", disallowedCountry as Any)])
                case .giveawayInfoResults(let flags, let startDate, let giftCodeSlug, let finishDate, let winnersCount, let activatedCount):
                return ("giveawayInfoResults", [("flags", flags as Any), ("startDate", startDate as Any), ("giftCodeSlug", giftCodeSlug as Any), ("finishDate", finishDate as Any), ("winnersCount", winnersCount as Any), ("activatedCount", activatedCount as Any)])
    }
    }
    
        public static func parse_giveawayInfo(_ reader: BufferReader) -> GiveawayInfo? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            if Int(_1!) & Int(1 << 1) != 0 {_3 = reader.readInt32() }
            var _4: Int64?
            if Int(_1!) & Int(1 << 2) != 0 {_4 = reader.readInt64() }
            var _5: String?
            if Int(_1!) & Int(1 << 4) != 0 {_5 = parseString(reader) }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 2) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 4) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.payments.GiveawayInfo.giveawayInfo(flags: _1!, startDate: _2!, joinedTooEarlyDate: _3, adminDisallowedChatId: _4, disallowedCountry: _5)
            }
            else {
                return nil
            }
        }
        public static func parse_giveawayInfoResults(_ reader: BufferReader) -> GiveawayInfo? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            if Int(_1!) & Int(1 << 0) != 0 {_3 = parseString(reader) }
            var _4: Int32?
            _4 = reader.readInt32()
            var _5: Int32?
            _5 = reader.readInt32()
            var _6: Int32?
            _6 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.payments.GiveawayInfo.giveawayInfoResults(flags: _1!, startDate: _2!, giftCodeSlug: _3, finishDate: _4!, winnersCount: _5!, activatedCount: _6!)
            }
            else {
                return nil
            }
        }
    
    }
}
