<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-aff3-e6d8-3587-11c7" name="BMGv2" battleScribeVersion="2.03" revision="1" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="Default Category" id="default-category"/>
    <categoryEntry name="Crew (Bane)" id="4b9d-e654-e756-e1ab" hidden="false"/>
    <categoryEntry name="Crew (Batman)" id="bb57-55b2-0ab2-6ce9" hidden="false"/>
    <categoryEntry name="Crew (Black Mask)" id="493a-36bc-1b2f-a0dc" hidden="false"/>
    <categoryEntry name="Crew (Court of Owls)" id="fb1c-d0da-ecbd-dd81" hidden="false"/>
    <categoryEntry name="Crew (Gorilla Grodd)" id="69fa-ba23-e7f2-3a6d" hidden="false"/>
    <categoryEntry name="Crew (Joker)" id="a8e5-9f8a-d8f0-02c7" hidden="false"/>
    <categoryEntry name="Crew (League of Assassins)" id="9702-99aa-fc73-85a4" hidden="false"/>
    <categoryEntry name="Crew (Mad Hatter)" id="4583-b269-50aa-8407" hidden="false"/>
    <categoryEntry name="Crew (Militia)" id="78c0-f98c-71de-0d2a" hidden="false"/>
    <categoryEntry name="Crew (Mr. Freeze)" id="7e87-ad93-a8e5-ecff" hidden="false"/>
    <categoryEntry name="Crew (Oliver Queen)" id="a3ed-6968-7ee7-76c7" hidden="false"/>
    <categoryEntry name="Crew (Organized Crime)" id="0f48-7464-f7a3-b3b5" hidden="false"/>
    <categoryEntry name="Crew (Penguin)" id="2f0f-c9e9-aee7-4a3a" hidden="false"/>
    <categoryEntry name="Crew (Poison Ivy)" id="8acb-5b5e-ca8e-fb31" hidden="false"/>
    <categoryEntry name="Crew (Riddler)" id="e7cc-9d1d-65dc-4380" hidden="false"/>
    <categoryEntry name="Crew (The Brave and the Bold)" id="e482-2d30-1001-a6a1" hidden="false"/>
    <categoryEntry name="Crew (Two Face)" id="3357-90ff-5d46-5cea" hidden="false"/>
    <categoryEntry name="Crew (Unknown)" id="b8c1-0bb0-ed53-bdfa" hidden="false"/>
    <categoryEntry name="Elite Boss (Ninja)" id="16f4-d87e-e808-378c" hidden="false"/>
    <categoryEntry name="Free Agent" id="79d4-9b8b-7f29-cba5" hidden="false"/>
    <categoryEntry name="Henchmen (Faction-specific)" id="cf01-1b3c-22d7-8d1b" hidden="false"/>
    <categoryEntry name="Leader" id="955d-3f8e-a1e3-88b9" hidden="false"/>
    <categoryEntry name="Minion" id="b1ff-96ae-e65f-84e7" hidden="false"/>
    <categoryEntry name="Sidekick" id="6c53-80aa-1e01-a485" hidden="false"/>
    <categoryEntry name="Equipment (Bane: Bane)" id="0daf-c319-56ab-9164" hidden="false"/>
    <categoryEntry name="Equipment (Bane: Bird)" id="4f96-ce9e-e09b-c7ad" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Cheshire)" id="0e24-78b4-3f88-2332" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Lady Shiva)" id="a684-0ba2-18de-95c4" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Nyssa al Ghul)" id="c059-e67d-a436-c0a1" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Ra&apos;s al Ghul)" id="adec-8d6e-1788-2ae0" hidden="false"/>
    <categoryEntry name="Equipment (LoA: Talia al Ghul)" id="3c91-e67e-b870-d7f8" hidden="false"/>
    <categoryEntry name="Rival (BB)" id="33d4-af20-d41a-829e" hidden="false"/>
    <categoryEntry name="Special Unit" id="ea61-4014-081c-4b64" hidden="false"/>
    <categoryEntry name="Business Agent" id="804a-afb5-5684-1e16" hidden="false"/>
    <categoryEntry name="Henchmen (Common)" id="32bb-4b05-45c6-81a9" hidden="false"/>
    <categoryEntry name="CC Weapon" id="f863-9de5-8630-bf4a" hidden="false"/>
    <categoryEntry name="Ranged Weapon" id="e5df-fb90-85ea-a151" hidden="false"/>
    <categoryEntry name="Rival (Joker)" id="6d11-48fc-2bdc-0044" hidden="false"/>
    <categoryEntry name="Rival (Bane)" id="ce29-acaa-6b01-5196" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Default Force" hidden="false" id="default-force">
      <categoryLinks>
        <categoryLink name="Default Category" hidden="false" id="default-force-category-link" targetId="default-category"/>
        <categoryLink name="Leader" hidden="false" id="5c90-5eb9-1242-6f1b" targetId="955d-3f8e-a1e3-88b9">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8627-c3a2-4976-f273-max" includeChildSelections="true" includeChildForces="true"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Free Agent" hidden="false" id="5f2a-adb2-6c7f-4f5e" targetId="79d4-9b8b-7f29-cba5">
          <constraints>
            <constraint type="max" value="0" field="selections" scope="roster" shared="true" id="5eb8-972a-9158-571b" includeChildSelections="true" includeChildForces="true"/>
          </constraints>
          <modifiers>
            <modifier type="increment" value="1" field="5eb8-972a-9158-571b">
              <repeats>
                <repeat value="150" repeats="1" field="limit::99c9-f5c8-7271-b9c6" scope="roster" childId="any" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Henchmen (Faction-specific)" hidden="false" id="6e01-147a-211b-9ef2" targetId="cf01-1b3c-22d7-8d1b"/>
        <categoryLink name="Sidekick" hidden="false" id="68b7-f7cb-8f33-5327" targetId="6c53-80aa-1e01-a485">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="34fc-84d1-c603-bf09" includeChildSelections="true" includeChildForces="true"/>
          </constraints>
          <modifiers>
            <modifier type="increment" value="1" field="34fc-84d1-c603-bf09">
              <conditions>
                <condition type="equalTo" value="0" field="selections" scope="roster" childId="955d-3f8e-a1e3-88b9" shared="true" includeChildSelections="true" includeChildForces="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Henchmen (Common)" hidden="false" id="32f5-2304-9c59-c54b" targetId="32bb-4b05-45c6-81a9"/>
      </categoryLinks>
      <modifiers>
        <modifier type="decrement" value="350" field="b5b3-aa8b-4d9c-5673">
          <repeats>
            <repeat value="1" repeats="1" field="selections" scope="force" childId="804a-afb5-5684-1e16" shared="true" roundUp="false" includeChildSelections="true"/>
          </repeats>
        </modifier>
      </modifiers>
    </forceEntry>
  </forceEntries>
  <sharedRules>
    <rule name="Acrobat" id="da11-4bbf-38e8-f4fb" hidden="false">
      <description>This model gains +1” to its basic movement distance. It does not treat a Jump as Impaired Movement. This model does not spend any MC to Jump, or to get up after being Knocked Down. It can move ‘through’ other models as though they weren’t there, but cannot end its move on another model. Models with Acrobat can use the Dodging Ranged Attacks rule.</description>
    </rule>
    <rule name="Agile" id="b0d4-b352-b031-307d" hidden="false">
      <description>When this model suffers Falling Damage, make an Agility Roll. If successful, the model takes no Damage and ignores the Knocked Down effect.</description>
    </rule>
    <rule name="Arrogant" id="e95a-0fba-3eab-c954" hidden="false">
      <description>This model may only be recruited if it has the highest Reputation value of all models in the crew.</description>
    </rule>
    <rule name="Assassin (X)" id="d5a6-22e3-afce-bb83" hidden="false">
      <alias>Assassin (1)</alias>
      <alias>Assassin (2)</alias>
      <alias>Assassin (3)</alias>
      <description>If this model removes an enemy Boss as a casualty, immediately gain an extra ‘X’ Victory Points.</description>
    </rule>
    <rule name="Brutal" id="3671-0de1-cb89-3f33" hidden="false">
      <description>This Trait allows the model to reroll the Collateral Damage dice (the second result must be accepted, even if it worse than the first).</description>
    </rule>
    <rule name="Business Agent" id="311a-4c24-57a3-1ff0" hidden="false">
      <description>When this model is recruited, add $350 to the crew’s available Funding.</description>
    </rule>
    <rule name="Canary Cry (2SC)" id="b850-c14c-50f1-5c4c" hidden="false">
      <description>2SC: Place the Spray template in base contact with this model – all models whose volume lies partially or wholly beneath it will receive one 
automatic hit with the Sonic special rule. 
Affected models must pass a Willpower roll or take (1 Blood) Damage and become Stunned. This action doesn’t count as an attack action. A model can use this trait only once per round.</description>
      <alias>Canary Cry</alias>
    </rule>
    <rule name="Clue Launcher" id="e376-b2ae-b389-571f" hidden="false">
      <description>When a Riddler driving this vehicle uses the Can You Solve This? trait, the Clue marker can be placed within 4” and in LoS of this model.</description>
    </rule>
    <rule name="Combat Flip (1SC)" id="f162-f173-595b-d58f" hidden="false">
      <description>1SC: This ability may be used when the model is in contact with an enemy. Move this model up to 3”. This model can use this trait once per turn.</description>
      <alias>Combat Flip</alias>
    </rule>
    <rule name="Combo (Weapon)" id="7f97-d629-3ec8-708b" hidden="false">
      <description>For every 2 AC spent using the specified weapon, this model may strike 3 times.</description>
      <alias>Combo (Unarmed)</alias>
      <alias>Combo (Poisoned Sai)</alias>
    </rule>
    <rule name="Daddy’s Girrrl" id="8d20-f91b-b155-9646" hidden="false">
      <description>If this model starts her activation within 6” of a Leader, she gains an extra Attack counter. This can allow the model to exceed the usual maximum.</description>
    </rule>
    <rule name="Disguised Sneak Attack (1SC)" id="06ea-a294-9a3e-3b08" hidden="false">
      <description>1SC: Target a model within 2&quot;. Perform an opposed Willpower roll against the target. If successful, the target cannot take Defense rolls against this model&apos;s Attacks until the end of the round.</description>
      <alias>Disguised Sneak Attack</alias>
    </rule>
    <rule name="Electric Handshake (3SC)" id="88c5-5162-26a3-aa3d" hidden="false">
      <description>3SC:Choose a model in contact. The target model must pass a Willpower roll or suffer the Stunned effect.</description>
      <alias>Electric Handshake</alias>
    </rule>
    <rule name="Elite (Type)" id="9042-9981-8585-44c0" hidden="false">
      <description>Your crew can only include 1 Elite model of each type, unless you also include the Elite Boss: Type.</description>
      <alias>Elite (Ninja)</alias>
    </rule>
    <rule name="Elite Boss (Type)" id="2ab7-a48d-2084-3bc1" hidden="false">
      <description>If your crew includes a model with this trait, you may recruit any number of Elite models of the same type as the Elite Boss.</description>
      <alias>Elite Boss (Ninja)</alias>
    </rule>
    <rule name="Falconry" id="3d59-8389-8f25-609d" hidden="false">
      <description>Until the end of the round, this model can perform ranged attacks against enemy models with 16&quot;, ignoring cover and LoS, as long as the target models are within 6&quot; of a friendly model.</description>
    </rule>
    <rule name="Follow me! (1SC)" id="dff5-13a0-8c39-ebad" hidden="false">
      <description>1SC: All friendly Henchmen within 4” of this model (but not the activated model itself) gain 1 free MC. This MC may take the number of assigned 
Action Counters above the normal maximum. A model can use this trait only once per round.</description>
      <alias>Follow me!</alias>
    </rule>
    <rule name="Good Aim (1SC)" id="294c-c52a-d46b-0d2e" hidden="false">
      <description>1SC: This model can move and fire (or fire and move) when using a weapon with the Aim weapon special rule. In addition, the model gains +1 to hit rolls with ranged attacks until the end of the round. A model can use this trait only once per round.</description>
      <alias>Good Aim</alias>
    </rule>
    <rule name="Grand Strategist" id="85bd-c322-9875-4986" hidden="false">
      <description>A model with Grand Strategist receives 2 additional Strategy points at the beginning of the game.</description>
    </rule>
    <rule name="Hates Humanity" id="a850-294c-9a8d-291b" hidden="false">
      <description>This model cannot be affected by friendly models’ traits.</description>
    </rule>
    <rule name="Batclaw / Grapple Gun (1MC+1SC)" id="451d-b629-13c3-25b6" hidden="false">
      <description>1MC+1SC: Once per round, during this activation, this model gains +8” to its basic movement distance, and can move in any direction (including vertically) The model can move over other models, obstacles and Difficult Ground without extra cost or penalty. However, the model cannot use this rule in two consecutive activations.</description>
      <alias>Batclaw</alias>
      <alias>Batclaw / Grapple Gun</alias>
      <alias>Grapplegun</alias>
      <alias>Hook Arrow</alias>
    </rule>
    <rule name="Juggernaut (1MC+1SC)" id="3d64-ca18-0c85-bba3" hidden="false">
      <description>1MC+1SC: When this model completes a Movement action you may push all models in volume contact 2&quot; (no roll is required). In addition, this model gains +1 to hit against models contacted in this way until the end of the round.</description>
      <alias>Juggernaut</alias>
    </rule>
    <rule name="Kill them! (1SC)" id="a3e6-ea50-118e-771b" hidden="false">
      <description>1SC: All friendly Henchmen within 4” of this model (but not the activated model itself) gain 1 free Attack Counter. This AC may take the number of assigned Action Counters above a Henchman’s normal maximum. A model can use this trait only once per round.</description>
      <alias>Kill them!</alias>
    </rule>
    <rule name="Kryptonite" id="3f15-9cb2-b4fb-3db3" hidden="false">
      <description>While a model with this trait is within 4” of a model with the Kryptonian trait, the Kryptonian model loses the Invulnerability and Regeneration traits (if they possess them).</description>
    </rule>
    <rule name="Luck (1SC, Passive)" id="7b52-6498-88f0-3311" hidden="false">
      <description>1SC, Passive: This model may spend 1SC to reroll any single die that he has rolled, for whatever reason.</description>
      <alias>Luck</alias>
    </rule>
    <rule name="Lunatic Laugh (2SC)" id="520f-5f8c-706c-ea3e" hidden="false">
      <description>2SC: All non-vehicle models within 4” of this model (but not this model itself) lose 1 Action Counter (of their choice).</description>
      <alias>Lunatic Laugh</alias>
    </rule>
    <rule name="Martial Artist" id="8126-5cf9-1ee0-ad87" hidden="false">
      <description>This model ignores the penalty for being Outnumbered in combat.</description>
    </rule>
    <rule name="Martial Expert" id="d39e-6abd-aebb-fcce" hidden="false">
      <description>This model causes a Critical on a collateral result of 4, 5, or 6, not just 6.</description>
    </rule>
    <rule name="Master of Stealth" id="2089-156d-f0d5-12aa" hidden="false">
      <description>Enemies can only see this model if it is within 6”. It is still subject to rules that aid detection, such as Light, Total Vision, etc. When this model uses the Sneak Attack special attack, it gains +1 to its Hit rolls.</description>
    </rule>
    <rule name="Mercenary" id="928b-aec0-9346-a40c" hidden="false">
      <description>You can only recruit this model in a League of Assassins Crew if a model with Name: Bane is also included in the crew.</description>
    </rule>
    <rule name="Military Tradition (2SC)" id="80dd-8138-cc7c-f4be" hidden="false">
      <alias>Military Tradition</alias>
      <description>2SC: Friendly models with the Veteran trait (excluding this model) within 8” can move up to 2” immediately. This model can use this trait once per round.</description>
    </rule>
    <rule name="Mind Control (2SC)" id="efc8-8e30-5264-c065" hidden="false">
      <description>2SC: Choose a non-vehicle enemy model within 8” and line of sight. The target immediately suffers the Hypnotize effect. In addition, if the target fails the Willpower roll, it loses 1 Action Counter of your choice. A model can use this trait once per round.</description>
      <alias>Mind Control</alias>
    </rule>
    <rule name="Mixed Combat Style (2SC)" id="48a9-e1da-b47e-44c5" hidden="false">
      <description>2SC: The model may perform a close combat attack action and a free ranged attack action in the same activation this round (no Action Counters are required for the ranged attack).</description>
      <alias>Mixed Combat Style</alias>
    </rule>
    <rule name="Order (1SC)" id="f9ef-447e-c143-7356" hidden="false">
      <description>1SC: This model may use an Order on another friendly model within line of sight. The chosen model can immediately reallocate up to 2 Action Counters on its Character Card.</description>
      <alias>Order</alias>
    </rule>
    <rule name="Outlaw Field Commander (1SC)" id="168a-4504-47fe-1b91" hidden="false">
      <description>1SC: Choose one friendly model within 4” and line of sight. That model gains 1 Action Counter. This may take the number of assigned Action Counters above a model’s normal maximum. A model can use this trait once per round.</description>
      <alias>Outlaw Field Commander</alias>
    </rule>
    <rule name="Primary Target (Type)" id="0ac2-e25d-8423-8b8c" hidden="false">
      <description>Before starting the game, choose 1 Objective in play of the indicated Type. If this model controls it at the end of a round, it awards 1 additional VP.</description>
    </rule>
    <rule name="Precise Aim (1SC)" id="f990-95e5-8d5e-5a30" hidden="false">
      <description>1SC: If this model has not moved, it can activate this ability to gain a +2 bonus to ranged attack rolls. This model may not move after using Precise 
Aim</description>
      <alias>Precise Aim</alias>
    </rule>
    <rule name="Rapid Fire (1SC)" id="4708-3417-6fab-181d" hidden="false">
      <description>1SC: When using a ranged weapon, this model gains +1 to the weapon’s Rate of Fire. If the model moves, it still gains this bonus. A model can use this trait once per activation.</description>
      <alias>Rapid Fire</alias>
    </rule>
    <rule name="Regrets" id="9ab3-9f49-e1c3-d3fd" hidden="false">
      <description>At the start of each of this model’s activations, it must pass a Willpower roll or be unable to make any attack or use Flaming Wave during this round.</description>
    </rule>
    <rule name="Regeneration (1SC)" id="a76c-e99c-0551-57fe" hidden="false">
      <description>1SC: When this ability is used, remove any one Damage marker from the model. A model can use this trait once per round.</description>
      <alias>Regeneration</alias>
    </rule>
    <rule name="Scheming (X)" id="58dd-dc9b-50d1-a6c3" hidden="false">
      <description>If this model is in the crew that Raises the Plan first, the controlling player can nominate X number of models to Raise their Plan after all opposing players have done so. If your opponent uses this rule and you also have a model with the Scheming trait, you may reduce the number of models they nominated by X.</description>
      <alias>Scheming (1)</alias>
      <alias>Scheming (2)</alias>
      <alias>Scheming (3)</alias>
      <alias>Scheming (4)</alias>
      <alias>Scheming (5)</alias>
    </rule>
    <rule name="Self-destruction (1AC+1SC)" id="0faa-3c69-e9e0-c001" hidden="false">
      <description>1AC+1SC: Treat this ability as a ranged attack action. Center an Explosion template on this model. There is no need to roll to hit. This is an Explosive attack with Strength 2+ and Damage (1 Blood + 1 Stun). After resolving this attack, remove this model as a casualty.</description>
      <alias>Self-destruction</alias>
    </rule>
    <rule name="Soul Armor (3SC)" id="ca7f-0db1-fb6b-530d" hidden="false">
      <description>One use only. Remove up to 2 Damage markers from this model (any type).</description>
    </rule>
    <rule name="Speedster (X)" id="6564-1a29-2fe2-9231" hidden="false">
      <description>This model can use Speed Force Powers, and has a maximum reserve of X Speed Force counters. A Speedster model gains +2” to its basic movement distance. The model does not treat Difficult Ground and Climbing as Impaired 
Movement, although others effects that modify the terrain (i.e. Ice) must be taken into account. Close combat attacks from this model cannot be Blocked unless the target has the Speedster trait too.</description>
      <alias>Speedster (1)</alias>
      <alias>Speedster (2)</alias>
      <alias>Speedster (3)</alias>
      <alias>Speedster (4)</alias>
      <alias>Speedster (5)</alias>
      <alias>Speedster (6)</alias>
    </rule>
    <rule name="Speed Force Absorption" id="70e3-c0a5-8720-b6bf" hidden="false">
      <description>This model can steal 1 Speed Force counter from another model with the Speedster trait at the end of the Drain Speed Force sub-phase. This counter may cause the model to exceed the normal maximum reserve of Speed Force Counters.</description>
    </rule>
    <rule name="Subliminal Suggestion (2SC)" id="2929-7a1d-d960-e34a" hidden="false">
      <description>2SC: Choose a single model (friend or foe) within 8” and line of sight of this model, with a Mental Disorder sub-trait. You may move the target model up to 4”, but cannot force the target to Fall, or spend any Action Counters.</description>
      <alias>Subliminal Suggestion</alias>
    </rule>
    <rule name="Taunt (1SC)" id="94ce-3280-94d4-3137" hidden="false">
      <description>1SC: Choose one enemy non-vehicle model within 8” and line of sight. You may reallocate up to 2 Action Counters on the target’s Character Card into Attack.</description>
      <alias>Taunt</alias>
    </rule>
    <rule name="The_Wizard" id="e480-4890-6c8e-8b48" hidden="false">
      <description>This model does not spend SC when using the Good Aim special rule. In addition, once per game, at the start of the Raise the Plan phase, you may move this model up to 4&quot;.</description>
    </rule>
    <rule name="Toxicologist" id="a823-9628-8f8c-e3ab" hidden="false">
      <description>Before performing an attack, this model can exchange one of the following effects during that attack: Enervating /2 or Scared
In addition, models suffering damage from the Poison effect within 8&quot; of this model suffer an additional blood damage.</description>
    </rule>
    <rule name="Treacherous" id="3050-696c-b6cb-3c88" hidden="false">
      <description>This model cannot be the Boss of your crew</description>
    </rule>
    <rule name="True Love (Name)" id="a610-1110-40f2-8367" hidden="false">
      <description>If the model named as the True Love (in parentheses) and this model are in the same crew, and the True Love model is removed as a Casualty, this model gains +1 Willpower and +1 Attack until the end of the game.</description>
      <alias>True Love (Damian Wayne)</alias>
      <alias>True Love (Bane)</alias>
      <alias>True Love (Talia)</alias>
    </rule>
    <rule name="Undead" id="192c-55b9-e3da-3a9d" hidden="false">
      <description>This model is immune to all effects and CRT, except Knock Down and Smoke.</description>
    </rule>
    <rule name="Unstoppable (1SC)" id="94fd-8660-e5c3-c3d7" hidden="false">
      <description>1SC: Each strike the model makes this turn requires 2 successful Blocks to successfully defend against.</description>
      <alias>Unstoppable</alias>
    </rule>
    <rule name="Weak" id="a4bf-1814-b7b3-14fa" hidden="false">
      <description>This model generates 1 less Action Counter for each Damage marker it has accumulated, rather than every 2 Damage markers as usual. It also immediately loses 1 Action Counter (of your choice) for each Damage marker received.</description>
    </rule>
    <rule name="Mastermind" id="96ca-9d5f-9b86-ff7e" hidden="false">
      <description>Before the start of the game, add 1 extra die or counter representing your crew to the bag or container you use to Take the Lead.</description>
    </rule>
    <rule name="Deadly Strike (1SC)" id="4c3a-fd4e-347d-eb5d" hidden="false">
      <alias>Deadly Strike</alias>
      <description>1SC: Once this trait is activated, for the rest of the round this model gains CRT: Casualty on all its Close Combats Attack Actions.</description>
    </rule>
    <rule name="Ice Flash (2SC)" id="1be9-b49c-71ce-2d03" hidden="false">
      <description>2SC: Select a target model within 10” and line of sight. The target must pass an Endurance roll, or become subject to the Cooled effect. If the target passes the Endurance roll, it still suffers -1 to Defense until the end of the round, and loses 1MC. This model can use this trait once per round.</description>
      <alias>Ice Flash</alias>
    </rule>
    <rule name="Persuasive (1AC+1SC)" id="edb9-92a5-68ff-a712" hidden="false">
      <description>1AC+1SC: At the end of this model’s activation, nominate any enemy model yet to activate this round and in Line of Sight. That model must be the next to activate. The opponent can’t use a Pass to ignore this rule. A model can use this trait once per round.</description>
      <alias>Persuasive</alias>
    </rule>
    <rule name="Super Jump (2MC+1SC)" id="653e-7ca9-9205-785e" hidden="false">
      <description>2MC+1SC: Place this model in any direction up to 8”. A model can use this trait once per activation.</description>
      <alias>Super Jump</alias>
    </rule>
    <rule name="Chaotic Friends" id="6879-fa33-84f0-1dbc" hidden="false">
      <description>Friendly models with the Gotham City Siren trait in this model’s crew gain the Unpredictable rule.</description>
    </rule>
    <rule name="Confusion (2SC)" id="7bda-2f07-1fb6-bfdc" hidden="false">
      <description>2SC: Once per round, this model can target a non-vehicle enemy model within its line of sight, and no further than 8” away. Reduce the target model’s Attack and Defense ratings by 1. Also, the target cannot spend SC this round. Both effects last until the end of the round.</description>
      <alias>Confusion</alias>
    </rule>
    <rule name="Unpredictible" id="84f7-de2f-5332-b782" hidden="false">
      <description>This model’s SC are wildcards. It may spend Special Counters on any other skill or action, immediately converting them into the appropriate type of counter for that action. When converted, the counters do not count towards the maximum counters the model may hold in any particular skill.</description>
    </rule>
    <rule name="Tracking (2SC)" id="5d17-abb6-c02f-ced1" hidden="false">
      <alias>Tracking</alias>
      <description>2SC: At the end of the Recount phase, this model can move up to 1D6 inches, using the rules for normal movement (but with no cost in MC).</description>
    </rule>
    <rule name="Adaptable" id="da01-18af-7b3a-1d60" hidden="false">
      <description>At the beginning of the Raise the Plan phase, the player controlling this model must choose between the Attack, Defense or Movement basic skills. The model receives +1 to the chosen skill until the end of the round.</description>
    </rule>
    <rule name="A Challenge for You" id="26ec-6291-c4e1-379e" hidden="false">
      <description>At the start of the game (before taking the lead) you can switch the position of two enemy Objective markers of any kind.</description>
    </rule>
    <rule name="Absolute Power" id="1766-a647-e27c-91d5" hidden="false">
      <description>If this model is your crew’s Boss, you can hire Henchmen with the Cop trait, regardless of their Affiliation.</description>
    </rule>
    <rule name="Addict" id="71d2-94a5-d833-40d1" hidden="false">
      <description>This model may use Doses (of any kind) belonging to a friendly model in contact, as if the Dose were its own.</description>
    </rule>
    <rule name="Affinity (Model)" id="a9bb-127b-fd56-7453" hidden="false">
      <description>This model shares a special affinity with another character. This model can be recruited as a Free Agent by the crew that includes the model named in parentheses. S/he may be recruited by that crew even if they have the Leader or Sidekick rank, and the crew already includes its maximum number of those ranks (this model’s rank is effectively changed to Free agent for the purposes of configuring the crew). Recruiting this model does not allow a further use of the trait (if, for example, another character has an Affinity to this model).</description>
    </rule>
    <rule name="Aggressive Schizophrenia (Mental Disorder)" id="f1b2-c975-7054-e0f1" hidden="false">
      <description>If this model is in contact with another model (friend or foe) at the beginning of its activation, they must attack – they take a single close combat strike against each model in contact, at no cost in AC. Once the attack is resolved, this model may continue its turn normally. This attack doesn’t count to the limit a model can make during an activation.</description>
    </rule>
    <rule name="Air Support (2SC)" id="c0a0-e6fc-e4c6-3068" hidden="false">
      <description>2SC: Place the Explosion template anywhere on the table. During this round, the area under the template is considered to be under the effect of Lights.</description>
      <alias>Air Support</alias>
    </rule>
    <rule name="Amazon" id="4d9a-62e1-aa74-7fd0" hidden="false">
      <description>This model receives a +1 bonus to its Hit and Block rolls. In addition, Damage rolls against this model suffer a -1 penalty.</description>
    </rule>
    <rule name="Amazon Lineage" id="91c7-c28e-f64c-0607" hidden="false">
      <description>If this model is your crew’s Boss, you can only recruit models with Affiliation: Amazons of Themyscira.</description>
    </rule>
    <rule name="Amazon Princess" id="201b-3bd1-1410-32b3" hidden="false">
      <description>This model can use the Charge special attack, paying only 1SC. The targets of this special attack incur a -1 penalty to their dice rolls to block it. While this Upgrade Character Card is added to Wonder Woman, she cannot use the Bracelets of Submission trait or the Lasso of Hestia weapon, and does not benefit from the effects of her Magic Shield.</description>
    </rule>
    <rule name="Amphibious" id="d584-a099-7bff-2550" hidden="false">
      <description>This model does not suffer Impaired Movement when moving through Difficult Ground elements that are considered water (i.e. rivers, swamps, canals, ponds, etc.). This Model can enter a Sewer by spending only 1MC.</description>
    </rule>
    <rule name="Anger Management (Mental disorder)" id="8ad4-1027-c9bc-ac1e" hidden="false">
      <description>When performing a ranged attack, this model must always select the closest model in line of sight, friend or foe, as the target.</description>
    </rule>
    <rule name="Animal" id="8209-cc9c-50b0-f794" hidden="false">
      <description>This model gains a bonus of +2” to its basic move distance. When it moves, it can ignore obstacles up to 2” high, but cannot Climb or Jump. If this model suffers the Fire effect, at the beginning of the Recount phase (before resolving the effect) make a Willpower roll (which cannot be rerolled). If this roll is failed, the model cannot move in the following round.</description>
    </rule>
    <rule name="Archie" id="303d-ae0f-a68d-fbbd" hidden="false">
      <description>This model is not deployed as normal at the start of the game. Once per game, at the start of the Raise the Plan phase of any round, you may place this model anywhere on the table that is not inside a building, as long as there is enough space for the model’s base to fit.</description>
    </rule>
    <rule name="Arkham Asylum Doctor (1SC)" id="3f5a-e5a7-3f93-b643" hidden="false">
      <alias>Arkham Asylum Doctor</alias>
      <description>1SC: All friendly models with a Mental Disorder trait within 4” of this model (but not the activated model itself) gain 1 free additional Action Counter. This counter is immediately placed in Movement, Attack or Defense. This bonus counter may take the number of assigned Action Counters above the model’s normal maximum. This model can use this rule once per round.</description>
    </rule>
    <rule name="Arrest (1MC+1SC)" id="87fe-693a-11b8-34ac" hidden="false">
      <description>1MC+1SC: When in contact with a KO, non-vehicle model, this model may immediately remove the KO model from the game as a Casualty.</description>
    </rule>
    <rule name="Assistance" id="1bfe-8618-edf9-c2fa" hidden="false">
      <description>While a friendly Robin (Boy Wonder) is in play, this model gains +1 Willpower. If a friendly Robin (Boy Wonder) is removed as a Casualty, this model gains +1 Strength until the end of the game.</description>
    </rule>
    <rule name="Atomica" id="5564-c670-078c-5d06" hidden="false">
      <description>When this model attacks an enemy non-vehicle model, before rolling to hit, the enemy model must pass an Agility roll. If it fails, it suffers -1 Defense until the end of the round.</description>
    </rule>
    <rule name="Attorney’s Allegation (2SC)" id="779d-95f9-f623-5260" hidden="false">
      <description>2SC: One Use Only. All friendly Henchman within 8” gain 2 free Action Counters. These counters are immediately allocated to Movement, Attack, Defense or Special.</description>
    </rule>
    <rule name="Autorepair (X)" id="0025-ee1c-adf9-4666" hidden="false">
      <description>In the Recount phase after calculating VPs, this model rolls 1D6. On a result of X+ remove a Damage counter from this model.</description>
    </rule>
    <rule name="Aversion (Model)" id="4860-8a2f-c140-b34d" hidden="false">
      <description>This model cannot be hired in the same crew as the specified model.</description>
    </rule>
    <rule name="Backpack" id="7fb3-1048-9239-798d" hidden="false">
      <description>This model can move with a Loot Objective marker without paying the 1MC cost.</description>
    </rule>
    <rule name="Bat-Armor MK I" id="e8c6-993d-b39a-945b" hidden="false">
      <description>Roll 1D6 for each hit you suffer, before the attacker makes Damage rolls. On a result of 5+ the hit is ignored.</description>
    </rule>
    <rule name="Bat-Armor MK II" id="b300-01ae-406e-f3c3" hidden="false">
      <description>Roll 1D6 for each hit you suffer, before the attacker makes Damage rolls. On a result of 6+ the hit is ignored. In addition, this model gains +1” to its basic movement distance.</description>
    </rule>
    <rule name="Bat-Armor MK III" id="db55-a770-99bf-b2ca" hidden="false">
      <description>Roll 1D6 for each hit you suffer, before the attacker makes Damage rolls. On a result of 5+ the hit is ignored. In addition, if this model has moved this activation, it can make close combat attacks against enemies up to 2” away in line of sight (ignore all traits that improve the model’s line of sight, such as Total Vision, for the purpose of these attacks).</description>
    </rule>
    <rule name="Take Cover! (1SC)" id="83a2-424d-a0e4-9615" hidden="false">
      <description>1SC: All friendly Henchmen within 4” of this model (but not the activated model itself) gain 1 free DC. This DC may take the number of assigned Action Counters above a Henchman’s normal maximum. A model can use this trait only once per round.</description>
      <alias>Take Cover!</alias>
    </rule>
    <rule name="Painful Empathy (1SC)" id="fcc5-7229-88a3-3399" hidden="false">
      <description>Transfer up to (AA) Damage markers from a friendly non-vehicle model in line of sight to this model. If any Damage marker is moved in this way, this model gains +1 to Attack and Defense until the end of the round. A model can use this trait only once per round.</description>
      <alias>Painful Empathy</alias>
    </rule>
    <rule name="Lord of Business" id="287a-3fe9-f064-ffe5" hidden="false">
      <description>If this model is the Boss, its crew has an extra $500 in its Funding stash than is normal for the game size, and may repeat once the Objective: Loot.</description>
    </rule>
    <rule name="Psychiatrist (1SC)" id="d0a4-ab2f-7f1d-3f33" hidden="false">
      <description>1SC: All friendly Henchmen models within 8” and line of sight of this model, with a Mental Disorder trait, gain +1 to their Attack and Defense skills. These bonuses last until the end of the next Raise the Plan phase. A model can use this trait once per round.</description>
      <alias>Psychiatrist</alias>
    </rule>
    <rule name="Sewer Swarm (3)" id="a9b0-f482-54d2-88b1" hidden="false">
      <alias>Sewer Swarm</alias>
      <description>Before phase D4 of the Pre-Game Sequence place 3 Sewer Swarm models within 2&quot; of this model.
If during this model&apos;s activation, you have less than 3 Sewer Swarms in play, you may spend 2 SC to place a Sewer Swarm model within 2&quot; of this model. Immediately allocate the Sewer Swarm&apos;s Action Counters. 
While a Sewer Swarm is within 4&quot;, that model gains the Poison Master rule.</description>
    </rule>
    <rule name="Batpod" id="eaf2-cc05-2937-1029" hidden="false">
      <description>This model gains +8&quot; to its basic movement distance. It can neither jump, climb, nor can it enter sewers. At the beginning of th Raise the Plan phase, you may remove this model from the Game and replace it with Batman (The Dark Knight Rises). If you do this, swap the Character Card, maintaining all damage and effect markers. Place the new model in a postion previously occupied by the Batpod.</description>
    </rule>
    <rule name="Batmobile Synchronizer" id="ac33-7fff-4432-9d52" hidden="false">
      <description>If Batman (Ben Affleck) drives this Batmobile, the Batmobile does not lose ROF for moving. Instead, the Twin-Miniguns gain the Imprecise special rule.</description>
    </rule>
    <rule name="Bipolar (Mental disorder)" id="e95e-dab6-ac37-4014" hidden="false">
      <description>At the beginning of this model’s activation, roll a die or flip a coin. If the result is even/heads, this model gets 1 extra Action Counter to spend during the round. If the result is odd/tails the model loses an Action Counter instead!</description>
    </rule>
    <rule name="Bluff (1SC)" id="83a8-97d9-d4cd-fc19" hidden="false">
      <description>1SC: Choose an enemy model within line of sight, no further than 6” away. The target reduces its Attack by 1 until the end of the round. If multiple models with this trait target the same model, the effect is not cumulative. This model can use this trait only once per round.</description>
      <alias>Bluff</alias>
    </rule>
    <rule name="Bloodthirsty (Mental disorder)" id="a6f3-bde6-5361-bc8a" hidden="false">
      <description>During the Raise the Plan phase, if this model has at least 1 Damage marker of any kind, it gains 1 extra Action Counter to use during the round, which must be allocated to Attack.</description>
    </rule>
    <rule name="Bot Bomb (2SC)" id="1207-64a0-60a1-e22c" hidden="false">
      <description>2SC: Once per round, choose one of your models with the Bot trait to explode. Center the Explosion template over the bot. There is no need to roll to hit. This is an Explosive attack with Strength 4+ and Damage (2 Blood). Once the attack is resolved, remove the Bot as a Casualty.</description>
      <alias>Bot Bomb</alias>
    </rule>
    <rule name="Bodyguard (1SC, Passive)" id="1c70-9eb3-4836-9771" hidden="false">
      <description>1SC, Passive: If a friendly model with the Leader or Sidekick rank within 2” of this model and Line of Sight is hit by an attack (of any kind), this model takes the hit instead.</description>
      <alias>Bodyguard</alias>
    </rule>
    <rule name="Bonebreaker (1SC)" id="3d36-b179-b8ac-df5a" hidden="false">
      <description>1SC: Until the end of the current round, this model’s unarmed strikes have CRT (2 Blood).</description>
      <alias>Bodyguard</alias>
    </rule>
    <rule name="Boss&apos;s Orders (2SC)" id="ea51-3c4f-75be-920f" hidden="false">
      <description>2SC: Until the end of the round, all friendly Henchmen within 8” of this model gain +1 to their Hit rolls in close combat. This model can use this trait only once per round.</description>
      <alias>Boss&apos;s Orders</alias>
    </rule>
    <rule name="Bot" id="0001-33fd-60aa-9000" hidden="false">
      <description>This model cannot recover from KO or recover Stun damage in the Recount phase. However, Firearms, Mechanical and Beam weapons damage this model on a result of 4+ instead of their usual specified score. In addition, this model cannot use Doses of any kind, and is 
immune to the Enervating, Hypnotize, Poison, Scared and Terror effects.</description>
    </rule>
    <rule name="Bot Mechanic (2SC)" id="463f-b13e-37e7-3a06" hidden="false">
      <description>Target a model with the Bot trait within 4” and in Line of Sight. Remove up to 3 Damage markers from that model. A model can use this trait only once per round.</description>
      <alias>Bot Mechanic</alias>
    </rule>
    <rule name="Bracelets of submission" id="5205-d885-27e9-97fe" hidden="false">
      <description>The first time this model is hit by an enemy ranged attack in each round, it may make an Agility roll. If successful, one hit is canceled. This Agility roll takes place before any Dodging Ranged Attacks attempts.</description>
    </rule>
    <rule name="Boy Wonder" id="538c-0146-8111-c5ef" hidden="false">
      <description>Enemy models cannot reroll Hit rolls against this model granted by the Handy rule.</description>
    </rule>
    <rule name="Chill Touch" id="9cdd-11d5-027e-7b6a" hidden="false">
      <description>Unarmed close combat attacks made by this model deal (1 Blood) and have CRT: Cooled.</description>
    </rule>
    <rule name="Can You Solve This? X+ (1SC)" id="528e-9319-1653-6f78" hidden="false">
      <description>Once per round this model can attempt to place a friendly Clue marker. Roll a dice – on a result of X+, place a Clue Marker in contact. 
If it won’t fit, the marker is lost. 
A Clue marker cannot be placed within either player’s deployment area, or within 4” of any other Clue marker, friendly or enemy. 
No more than five friendly Clue markers may be placed on the board at any one time. 
In the Recount phase, your side scores 1 VP for each friendly Clue marker in play. A model in contact with a Clue marker can remove it from the game with a Manipulate action.</description>
      <alias>Can You Solve This? 1+</alias>
      <alias>Can You Solve This? 2+</alias>
      <alias>Can You Solve This? 3+</alias>
      <alias>Can You Solve This? 4+</alias>
      <alias>Can You Solve This? 5+</alias>
      <alias>Can You Solve This? 6+</alias>
    </rule>
    <rule name="Catcher Gear" id="dddb-70a7-0fc6-f4b9" hidden="false">
      <description>Enemies attacking this model never benefit from 
the Heavy weapon special rule.</description>
    </rule>
    <rule name="Cannibal" id="b1bf-8e17-2053-5012" hidden="false">
      <description>When this model causes a non-vehicle enemy a Casualty in close combat, remove up to 2 Damage markers of any kind from its Character Card.</description>
    </rule>
    <rule name="Chain of Command" id="5a94-0b2f-3838-4b37" hidden="false">
      <description>When its crew’s Boss becomes a Casualty, this model gains the Leader rank. If more than one model in the crew has this trait, the controlling player must choose which is affected.</description>
    </rule>
    <rule name="Charismatic" id="f0cc-450b-1ed4-df6e" hidden="false">
      <description>A crew that includes this model can recruit 1 additional Free Agent, ignoring the usual restrictions.</description>
    </rule>
    <rule name="Climbing Claws" id="00a3-8239-15e8-d006" hidden="false">
      <description>This model never suffers Impaired Movement when Climbing. In addition, the model may end its movement at any point on a climbable surface, such as on the side of a wall. Make the model’s end position clear to the opposing player if it is not possible to physically place the model there.</description>
    </rule>
    <rule name="Chaotic Planner" id="753d-1123-61db-d431" hidden="false">
      <description>Each time you use a strategy, roll 1D6. On a result of 1, the strategy is cancelled.</description>
    </rule>
    <rule name="Claws" id="c144-fc60-8c08-d197" hidden="false">
      <description>This model’s Unarmed attacks inflict Damage (1 Blood, 1 Stun).</description>
    </rule>
    <rule name="Charm" id="2416-7354-e923-f27c" hidden="false">
      <description>Whenever this model becomes the target of a close combat attack, the attacker must pass a Willpower roll or the attack automatically fails.</description>
    </rule>
    <rule name="Chlorokinesis (1SC)" id="85de-30ce-379f-9eed" hidden="false">
      <description>1SC: Once per round, this model can be placed from one point inside of an action zone of a plant to another point in the same action zone.</description>
      <alias>Chlorokinesis</alias>
    </rule>
    <rule name="Clay Body" id="390a-6c71-1b8a-cb19" hidden="false">
      <description>When this model uses the Charge special attack it only costs 1SC. In addition, this model is immune to the Steal effect.</description>
    </rule>
    <rule name="Concealment (1MC+1SC)" id="f853-c115-9856-c56c" hidden="false">
      <description>1MC+1SC: Until the end of the round in which this ability is used, enemy models can only see this model if it is in contact with them. 
This ability works even when the model is within the area of effect of a Light. 
However, the model is still subject to other rules that aid detection, such as Total Vision or Superior Sense of Smell, etc. 
This model can be affected by templates, but cannot be targeted directly.</description>
      <alias>Concealment</alias>
    </rule>
    <rule name="Combat Mode (3MC)" id="3107-1447-a72a-1b76" hidden="false">
      <description>3MC: Until the end of the round, this vehicle can move in any direction while moving, not just straight forward.</description>
    </rule>
    <rule name="Close Combat Master" id="b58e-d721-e070-3238" hidden="false">
      <description>When fighting Unarmed, this model may reroll failed Hit rolls in close combat.</description>
    </rule>
    <rule name="Cop" id="19bd-d9e6-cf79-308f" hidden="false">
      <description>This model gains +1 to Hit rolls against models with the Criminal trait.</description>
    </rule>
    <rule name="Control Pheromones (3SC)" id="c4f9-e5d5-6e9e-2f8f" hidden="false">
      <description>3SC: A model with this Trait may choose a non vehicle enemy model within its line of sight and no further than 5” away. The target immediately suffers the Hypnotize effect. A model can use this trait once per round.</description>
      <alias>Control Pheromones</alias>
    </rule>
    <rule name="Commissioner" id="7b8c-ab3b-aa41-6873" hidden="false">
      <description>This model can use the Arrest rule by spending only 1MC.</description>
    </rule>
    <rule name="Counter Attack (1SC) (Passive)" id="648d-9c9e-3175-ef1c" hidden="false">
      <description>1SC: Once this trait is activated, for the rest of the round this model may make one strike against an attacker for each successful Block roll it makes 
against that attack (to a maximum equal to the number of successful strikes the attacker made). 
These Counter Strikes take place immediately, thus they are resolved before the normal sequence of play resumes.</description>
      <alias>Counter Attack</alias>
    </rule>
    <rule name="Criminal" id="6303-cbbb-83c5-0c5a" hidden="false">
      <description>The first time that this model makes an enemy model KO or Casualty, it receives +1 Willpower until the end of the game</description>
    </rule>
    <rule name="Corrupt" id="1a1a-ca1b-d40c-cd87" hidden="false">
      <description>If this model is included your Crew, you can recruit up to 3 Henchmen with the Cop trait. Additional models in the crew with this trait have no further effect.</description>
    </rule>
    <rule name="Countermeasures" id="540e-4b1b-0954-e4ae" hidden="false">
      <description>This model gains one of the following rules at the start of each activation, until its next activation: 
- Stealth
- Night Vision
- Ignore the Anti-tank rule.</description>
    </rule>
    <rule name="Coward’s Reward (1SC)" id="6c03-4a8a-ebda-82af" hidden="false">
      <description>1SC: Until the end of the round, when an enemy model in contact with this model wishes to move away, it must first pass an Agility roll or suffer (1 Blood) damage.</description>
      <alias>Coward’s Reward</alias>
    </rule>
    <rule name="Cruel (2SC)" id="a437-bea2-0ba3-89c0" hidden="false">
      <description>2SC: When this model is in contact with a KO, non-vehicle enemy model, that model is removed from play as a Casualty</description>
      <alias>Cruel</alias>
    </rule>
    <rule name="Court of Owls crew" id="db90-feca-a0a8-5ce1" hidden="false">
      <description>This crew can only hire models with Court of Owls affiliation.</description>
    </rule>
    <rule name="Criminology" id="93c9-c64b-693c-83fa" hidden="false">
      <description>All enemy models within 12” of this model lose the Runaway trait.</description>
    </rule>
    <rule name="Critical Strike (1SC)" id="f82d-ec9e-61aa-8102" hidden="false">
      <description>1SC: When striking an enemy model in close combat, before rolling for damage, the Collateral die isn’t rolled and is automatically a 6.</description>
      <alias>Critical Strike</alias>
    </rule>
    <rule name="Cybernetic" id="e659-6501-cb32-04c4" hidden="false">
      <description>This model gains +1 to its Block attempts, and can reroll Recovery rolls.</description>
    </rule>
    <rule name="Cyclops" id="e9d3-c29c-8331-0733" hidden="false">
      <description>This model’s ranged attacks gain the Imprecise rule when the target is more than 8” away.</description>
    </rule>
    <rule name="Demoralize (1SC)" id="e60b-ec3c-8f7f-84e4" hidden="false">
      <description>1SC: All enemy Henchmen within 6” lose 1 Action Counter of your choice. This model can use this trait only once per round.</description>
      <alias>Demoralize</alias>
    </rule>
    <rule name="Death Marks" id="fccb-97c5-b287-28a8" hidden="false">
      <description>The first Casualty inflicted by this model in the game gives 1 extra VP to its crew.</description>
    </rule>
    <rule name="Death or Exile (2SC)" id="9248-29ef-98ce-5356" hidden="false">
      <description>2SC: This model can target one KO, non-vehicle model within 8”. The targeted model is removed as a Casualty.</description>
      <alias>Death or Exile</alias>
    </rule>
    <rule name="Dirty Money" id="1537-0dff-66c5-f56c" hidden="false">
      <description>If this model is the Boss, its crew has an extra 
$300 in its Funding stash than is normal for the 
game size.</description>
    </rule>
    <rule name="Death Pack" id="de95-3180-f208-8cef" hidden="false">
      <description>If the target of this model’s close combat attacks is already in contact with one or more other friendly models with this trait, this model gains +1 to Hit rolls and one free attack dice against that target.</description>
    </rule>
    <rule name="Delirium" id="8b2a-3a66-6368-06bc" hidden="false">
      <description>This model cannot make recovery rolls at the end of the round (for example, to remove a Stun or recover from KO).</description>
    </rule>
    <rule name="Demotivate (2SC)" id="838c-4964-2b5b-de9e" hidden="false">
      <description>2SC: Pick a target model within 8” and line of sight. The model must pass a Willpower roll or immediately lose up to 2 Action Counters of your choice.</description>
      <alias>Demotivate</alias>
    </rule>
    <rule name="Desensitized" id="05aa-935d-364a-a9cb" hidden="false">
      <description>This model does not reduce its number of Action Counters as it accumulates Damage markers. Note that, in earlier editions of the game, this rule was called Insensitive, and may be listed as such on some Character Cards.</description>
    </rule>
    <rule name="Detective" id="f493-cc40-896a-f113" hidden="false">
      <description>For each Detective model you have in play, you may cancel one of your opponent’s ‘passes’ at the beginning of each round.</description>
    </rule>
    <rule name="Detective Mode" id="1aba-f7bf-c39c-37c1" hidden="false">
      <description>This model does not suffer the Blind effect and can see through Smoke.</description>
    </rule>
    <rule name="Direct Connection to the Speed Force" id="e688-1abd-ce8e-fe1e" hidden="false">
      <description>This model may reroll the Paradox roll.</description>
    </rule>
    <rule name="Dirty Fighter" id="aa24-efa7-5766-51c7" hidden="false">
      <description>This model can use ranged weapons even if it is in contact with enemy models. If it uses a ranged weapon to target an enemy model in contact, it gains +1 to its Hit rolls.</description>
    </rule>
    <rule name="Disarray (1SC)" id="19ca-58d8-d573-be79" hidden="false">
      <description>1SC: Once per turn, this model may change the position of 2 Action Counters on the Character Card of a non-vehicle enemy model in line of 
sight.</description>
      <alias>Disarray</alias>
    </rule>
    <rule name="Discourage (2SC)" id="11d4-8deb-39df-161d" hidden="false">
      <description>2SC: Once per round, this model can choose a non-vehicle enemy model within line of sight. The target model must reduce its Willpower by 2 until the end of the next Raise the Plan phase.</description>
      <alias>Discourage</alias>
    </rule>
    <rule name="Disruptor (2SC)" id="0b4c-5f40-ad05-b730" hidden="false">
      <description>2SC: Target one enemy model within 8” and in line of sight. The target cannot use ranged weapons with the Firearm or Beam rule until the end of the round.</description>
      <alias>Disruptor</alias>
    </rule>
    <rule name="Disturb (1SC)" id="693e-0e73-894f-2207" hidden="false">
      <description>1SC: Choose one model in line of sight. That model’s Action Counters cannot be reallocated during this round (even by a trait such as Disarray, for example).</description>
      <alias>Disturb</alias>
    </rule>
    <rule name="Distract (1SC)" id="f3dd-c03b-c700-7996" hidden="false">
      <description>1SC: Target one enemy model within 4” and in line of sight. The target reduces its Defense by 1 until the end of the round. If multiple models with this trait target the same model, the effect is not cumulative. A model can use this trait only once per round.</description>
      <alias>Distract</alias>
    </rule>
    <rule name="Dollotrons" id="96b4-ee64-2bf4-e50a" hidden="false">
      <description>When you recruit Professor Pyg, you must also recruit three Dollotron models, at no additional Reputation cost.</description>
    </rule>
    <rule name="Dodge" id="ff3f-51e5-d699-4d97" hidden="false">
      <description>This model can use the Dodging Ranged Attacks rule.</description>
    </rule>
    <rule name="Duelist" id="e78c-7421-cd5a-3dd8" hidden="false">
      <description>While in contact with only one enemy model, this model may reroll failed Hit rolls in close combat.</description>
    </rule>
    <rule name="Elusive (1MC, Passive)" id="6c33-51a3-84eb-ada0" hidden="false">
      <description>1MC: This model may spend 1MC to reroll a Ping!</description>
      <alias>Elusive</alias>
    </rule>
    <rule name="Duke of Duality" id="b083-ca78-0010-f19f" hidden="false">
      <description>When the controlling player of this model gains any number of VP, flip a coin or roll a D6: if the result is ‘heads’ (or an even number) gain an additional VP, if not, gain one less VP.</description>
    </rule>
    <rule name="Echolocation (1SC)" id="38af-bfad-2dc4-da91" hidden="false">
      <description>1SC: Until the end of the round, this model is immune to the Smoke effect. In addition, this model may see at any distance, limited only by his line of sight and intervening scenery.</description>
      <alias>Echolocation</alias>
    </rule>
    <rule name="Enemies of the Court" id="88d8-7909-780e-8919" hidden="false">
      <description>While this model is in play, your crew gains 1 additional VP each time an enemy model becomes a Casualty.</description>
    </rule>
    <rule name="ECM" id="84fc-a2e0-5322-0c66" hidden="false">
      <description>All light sources within 6” of this model become canceled (effectively illuminating an area of 0”).</description>
    </rule>
    <rule name="Exclusive Driver (X)" id="1243-08b9-f295-2705" hidden="false">
      <description>Only X can be the driver of this Vehicle.</description>
      <alias>Exclusive Driver</alias>
    </rule>
    <rule name="EMP" id="66e8-3180-af12-cabb" hidden="false">
      <description>This model rerolls failed Damage rolls against models with the Cybernetic, Bot or Robot traits, and against models with the Vehicle rank.</description>
    </rule>
    <rule name="Energy Field" id="5242-7910-36ed-c158" hidden="false">
      <description>Roll 1D6 for each hit this model suffers from a ranged attack (before the attacker takes Damage rolls). On a result of 5+, the hit is ignored.</description>
    </rule>
    <rule name="Enhanced Vision" id="e5b4-1cf9-59ce-2823" hidden="false">
      <description>This model can see at any distance and ignores the Concealment trait. In addition, the model is immune to the Blind effect.</description>
    </rule>
    <rule name="Experimental AMMO" id="75aa-7456-0204-05c4" hidden="false">
      <description>This model can’t manipulate Ammo Crates (or the SWAT Van).</description>
    </rule>
    <rule name="Escape Artist" id="4807-b9e4-a353-0db6" hidden="false">
      <description>Enemies may not make Grab special attacks against this model.</description>
    </rule>
    <rule name="Exhaustive Planner" id="c8ee-73f3-f141-1791" hidden="false">
      <description>Before the game starts, this model may cancel one of the opponent’s Strategies. In a multiplayer game, only one Strategy is cancelled, not one for each opponent. If there are several models in play with this trait, they may each cancel one enemy Strategy.</description>
    </rule>
    <rule name="Fly (1MC+1SC)" id="6eb9-3137-65ed-f057" hidden="false">
      <description>1MC+1SC: Once per round, during this activation this model gains +8” to its basic movement distance and can move in any direction (including vertically). The model can move over other models, obstacles and Difficult Ground without extra cost or penalty. When this model suffers a Fall, reduce the result on the Falling chart by one step.</description>
      <alias>Fly</alias>
    </rule>
    <rule name="Expendable" id="1d43-a8ca-0a2a-cbf7" hidden="false">
      <description>Your opponent cannot score VPs for making this model KO.</description>
    </rule>
    <rule name="Expert Marksman" id="8c7f-676a-344d-77cd" hidden="false">
      <description>This model’s ranged attack targets suffer a -1 penalty to their Ping! rolls.</description>
    </rule>
    <rule name="Explosive Gel" id="17ee-350d-fd6f-ead3" hidden="false">
      <description>A model with Explosive Gel may Manipulate a lamppost, sewer, dumpster, phone booth, or other item of urban furniture (at a cost of 1MC as usual). 
When he does so, place a Gel marker on it. This model may then choose to destroy the marked item and remove it from the game spending by 1SC at any time during any of its activations. 
Note that Explosive Gel may not be used to destroy Objective markers.</description>
    </rule>
    <rule name="Extremely mutated" id="0fbf-d426-99c7-05e2" hidden="false">
      <description>This model cannot buy more than one item of equipment.</description>
    </rule>
    <rule name="Fast" id="abff-9516-0a96-d4c5" hidden="false">
      <description>This model gains +2” to its basic movement distance.</description>
    </rule>
    <rule name="Ferociuos" id="5c6e-fc64-0bb1-57ab" hidden="false">
      <description>When this model attempts a Push attack in close combat, they do not have to spend SC.</description>
    </rule>
    <rule name="Feral" id="68aa-a106-fdbe-8f21" hidden="false">
      <description>This model gains +1 to Hit rolls when attempting a Grab attack in close combat.</description>
    </rule>
    <rule name="Flak Armor" id="9968-86c9-a526-5d70" hidden="false">
      <description>This Model is immune to damage caused by weapons with the Explosive and/or Expansive rules.</description>
    </rule>
    <rule name="For the Family (1SC, Passive)" id="fd64-978d-921a-797e" hidden="false">
      <description>1SC: If a friendly Carmine Falcone within 2” and line of sight of this model is hit by an attack (of any kind), this model takes the hit instead. This Trait 
can’t be used against attacks by models with Name: Selina Kyle.</description>
      <alias>For the Family</alias>
    </rule>
    <rule name="Flying High (1MC+3SC)" id="afa7-94b5-ac07-fb6e" hidden="false">
      <description>1MC+3SC: One use only. This model gains +20” to its basic movement distance and can move in any direction (including vertically). The model can move over other models, obstacles and Difficult Ground without extra cost or penalty.</description>
      <alias>Flying High</alias>
    </rule>
    <rule name="Feint (1SC)" id="2339-c607-712f-3889" hidden="false">
      <description>1SC: Target a single enemy model in contact and make an Agility roll – if successful, the target cannot Block this model’s attacks until the end of the round.</description>
      <alias>Feint</alias>
    </rule>
    <rule name="Flare" id="0e9c-f536-d84e-0b2c" hidden="false">
      <description>One use only. The entire gaming area is under the effect of Light until the end of round.</description>
    </rule>
    <rule name="Funny Bomb (1AC+1SC)" id="9725-69f2-bf3b-3238" hidden="false">
      <description>1AC+1SC: Treat this ability as a ranged attack action. Center the Explosion template over this model. There is no need to roll to hit. This is an Explosive attack with Strength 3+ and Damage (1 Blood + 1 Stun). Once the attack is resolved, remove this model as a Casualty.</description>
      <alias>Funny Bomb</alias>
    </rule>
    <rule name="Football Gear" id="c9ac-bce9-442d-b6f2" hidden="false">
      <description>Enemies attacking this model never benefit from the Sharp and Heavy weapon special rules.</description>
    </rule>
    <rule name="Get&apos;em! (1SC)" id="b5e1-ae0b-25db-78dc" hidden="false">
      <description>1SC: One friendly Henchman within 8” and line of sight of this model gains 2AC.</description>
      <alias>Get&apos;em!</alias>
    </rule>
    <rule name="Fully Equipped" id="5590-7c0c-fbb7-5925" hidden="false">
      <description>This model can purchase any equipment listed for Jason Todd even if it comes from a different crews equipment list.</description>
    </rule>
    <rule name="Goad (1SC)" id="c442-832d-bca7-9f0b" hidden="false">
      <description>1SC: Target one enemy non-vehicle model within 8” and line of sight, the target must make a Willpower roll. If the roll is failed, you may move the enemy model up to 2”, following all of the usual Movement rules. During this movement, you cannot force the target to Fall, nor may you spend any of its Action Counters. You may not target the same model more than once per activation.</description>
      <alias>Goad</alias>
    </rule>
    <rule name="Gotham City Siren" id="e2b5-420d-fc88-2775" hidden="false">
      <description>One use only. Target another friendly model with this trait within 4” – the target gains 1 Action Counter. This may take the number of assigned Action Counters above a model’s normal maximum.</description>
    </rule>
    <rule name="Gas Mask" id="f542-5b53-ad2f-f92b" hidden="false">
      <description>This model ignores Damage and effects caused by any attack (weapon or trait) with the Gas special rule.</description>
    </rule>
    <rule name="Green Travel (2MC+2SC)" id="b4cd-9dfd-e143-1cc6" hidden="false">
      <description>2MC+2SC: One use only. This model may be placed up to 16” from its starting position. A model may not perform any other movement action in the same round that it uses Green Travel.</description>
      <alias>Green Travel</alias>
    </rule>
    <rule name="God Killer" id="3af0-8f71-c920-df45" hidden="false">
      <description>This model’s Attacks gain the Magic weapon special rule. In addition, the model is immune to the Poison effect, and ignores damage inflicted by weapons with the Electric weapon special rule.</description>
    </rule>
    <rule name="Gunman (2SC)" id="002e-4ebd-cf7d-47ce" hidden="false">
      <description>2SC: Until the end of the round, when this model makes a ranged attack, it can make 2 ranged attacks instead of 1. Each Attack consumes an Ammunition Magazine as usual. The two attacks can be performed with different weapons.</description>
      <alias>Gunman</alias>
    </rule>
    <rule name="Greed" id="32b0-ef28-2e4b-801b" hidden="false">
      <description>The only Objectives this model can control are Loot and Safe Boxes.</description>
    </rule>
    <rule name="Hacking (1SC)" id="d214-c512-2403-7fb2" hidden="false">
      <description>1SC: Once per turn this model may change the position of 2 Action Counters on the Character Card of an enemy model with the Bot, Robot or Cybernetic Trait.</description>
      <alias>Hacking</alias>
    </rule>
    <rule name="Grin Twins" id="1a2c-cddd-dd2c-ce67" hidden="false">
      <description>This model gains +1 to Attack, Defense and Willpower while there is at least one other friendly model in play with this trait.</description>
    </rule>
    <rule name="Heroic (1SC)" id="62a2-b861-6c9c-5963" hidden="false">
      <description>Target any one friendly model on the board. That model immediately gains 1 Action Counter of your choice. This may take the number of assigned Action Counters above a model’s normal maximum. A model can use this trait once per round.</description>
      <alias>Heroic</alias>
    </rule>
    <rule name="Handyman" id="a9a8-dd44-ee31-bd7c" hidden="false">
      <description>This model does not have to spend MC to Manipulate an object. In addition, if the Handyman is in contact with a damaged or Broken vehicle at the end of the Recount phase, he may spend 1SC to attempt to repair the vehicle. Roll a D6 – on a 4+, the vehicle removes 1 Stun.</description>
    </rule>
    <rule name="Hard Driving" id="a750-e63a-d9a7-71a4" hidden="false">
      <description>For each two Action Counters spent in the same Basic Skill, this model has -1 Handling in the next Raise the Plan phase (can be cumulative).</description>
    </rule>
    <rule name="Hard Guys" id="aaaf-09d5-c503-8e6d" hidden="false">
      <description>If this model is the Boss, all friendly Henchman with the Reinforced Gloves trait or Brass Knuckles weapon may reroll failed Damage rolls.</description>
    </rule>
    <rule name="Heavy Armor" id="f075-06d4-140b-fcd5" hidden="false">
      <description>Damage rolls against this model suffer a -3 penalty.</description>
    </rule>
    <rule name="Hates: Crew/s" id="4ac1-2c93-0300-f99a" hidden="false">
      <description>This model can never be hired with the specified crew/s.</description>
    </rule>
    <rule name="Hardened" id="0610-907f-ed3e-df46" hidden="false">
      <description>Each round, the first Injury Damage marker (Blood) inflicted on this model becomes a Stun Damage marker (Stun) instead.</description>
    </rule>
    <rule name="Henchman Bomb (2SC)" id="48ea-2bd9-4e69-a3a0" hidden="false">
      <description>2SC: One use only. Choose one friendly Henchman model and center an Explosion template on it. There is no need to roll to hit. This is an Explosive attack with Strength 2+ and Damage (3 Blood). After resolving this attack, the chosen Henchman is removed as a casualty.</description>
      <alias>Henchman Bomb</alias>
    </rule>
    <rule name="Heir to the Cowl" id="57a8-b8fe-4c6d-cae1" hidden="false">
      <description>If there is no model with the Alias ‘Batman’ (any version) in the same crew, this model changes its Rank to Leader.</description>
    </rule>
    <rule name="Hidden" id="d2cc-934e-b093-a484" hidden="false">
      <description>After Objectives have been placed (at the end of the pre-game phase D), this model may be deployed anywhere in the playing area. The model must be placed more than 4” away from any Objective and out of line of sight of any enemy model or 12” away from them. If this is not possible, this model should be deployed in the usual deployment zone.</description>
    </rule>
    <rule name="Hover (1MC)" id="db80-1605-b40c-23de" hidden="false">
      <description>1MC: When this ability is activated, place a Hover marker on the character card. The model is in Hover mode for the rest of the round. 
While a model is in Hover mode, they can only be hit in close combat on a natural result of 6. A model with a Hover marker cannot benefit from the Ping! or Crouch rules. If a model with a Hover marker becomes KO, Knocked Down, Paralyzed, Pinned Down or Stunned, it receives (2 Blood) in addition to any other effects, and immediately loses the Hover mode.
At the beginning of the Raise the Plan phase, the model loses the Hover mode.</description>
      <alias>Hover</alias>
    </rule>
    <rule name="Hidden Sniper (2AC)" id="aa6b-976e-b366-6d8a" hidden="false">
      <description>2AC: Select a target that this model can see, and that is also within 12” of any board edge. The target receives a Ranged Attack ignoring the Ping! rule. This attack has RoF 2, Damage (2 Blood) and the Firearm rule.</description>
      <alias>Hidden Sniper</alias>
    </rule>
    <rule name="Hidden Boss" id="8d1b-71e9-72b3-3007" hidden="false">
      <description>When your crew’s Leader becomes a Casualty, this model gains +1 Willpower and the Leader Rank until the end of the game.</description>
    </rule>
    <rule name="I know what I’m doing" id="d052-fa0e-df46-7ba1" hidden="false">
      <description>Once per game, this model can ignore the result on the Paradox table. The speed power still fails.</description>
    </rule>
    <rule name="Hockey Gear" id="1951-216f-3154-15e0" hidden="false">
      <description>Enemies attacking this model never benefit from the Sharp weapon special rule.</description>
    </rule>
    <rule name="Joker’s Gas (2SC)" id="190d-d745-50f8-a202" hidden="false">
      <description>2SC: All models within 4” must pass an Endurance roll or suffer Enervating (1) and (1 Blood) Damage. A model can use this trait once per round.</description>
      <alias>Joker’s Gas</alias>
    </rule>
    <rule name="I Believe in Harvey Dent" id="7f78-62c2-c715-fe35" hidden="false">
      <description>If this model is the Boss, friendly henchmen roll a die or flip a coin at the beginning of their activations, if the result is even/heads that model immediatelly allocates 1 extra Action Counter.</description>
    </rule>
    <rule name="Incorporeal (1SC)" id="fe82-31fa-2f7b-669d" hidden="false">
      <description>1SC: Until the end of the round, this model is immune to Stun Damage. The model can move ‘through’ other models and scenery as though they weren’t there, but cannot end its move over another model or inside solid scenery.</description>
      <alias>Incorporeal</alias>
    </rule>
    <rule name="Inspire Fear (2SC)" id="4ef7-967d-0ca0-b696" hidden="false">
      <description>2SC: Select an enemy non-vehicle model within 4” and line of sight. The target must pass a Willpower roll. If it fails, compare the amount that it failed by with the Fear Chart below to determine the effects.
• 1-2: Scared
• 3-4: Scared + Terror 1
• 5-6: Scared + Terror 2
• 7: Scared + Terror 3
• 8 or more: Model becomes Casualty; +1VP</description>
      <alias>Inspire Fear</alias>
    </rule>
    <rule name="Intimidate (2SC)" id="62cc-46ad-3a40-94c7" hidden="false">
      <description>2SC: Target an enemy non-vehicle model within 8” and line of sight. For the rest of the round, the target cannot spend SC and cannot reroll Willpower. A model can use this trait once per round.</description>
      <alias>Intimidate</alias>
    </rule>
    <rule name="Instinctive Shooting (1SC)" id="aeec-4195-f65b-943f" hidden="false">
      <description>1SC: Until the end of the round, this model can move and its weapons can still be used at full RoF.</description>
      <alias>Instinctive Shooting</alias>
    </rule>
    <rule name="Inspire (1SC)" id="8247-a4cd-633c-202b" hidden="false">
      <description>1SC: All friendly Henchmen within 4” of this model (but not the activated model itself) gain 1 free additional Action Counter (it may be assigned to Movement, Attack, Defense or Special). This may take the number of assigned Action Counters above a Henchman’s normal maximum. A model can use this trait only once per round.</description>
      <alias>Inspire</alias>
    </rule>
    <rule name="I Will Break You" id="5524-1821-ece1-c306" hidden="false">
      <description>When you hire this model, chose one of the next options:
• Bane gains +3 Extra Venom Dose.

• Bane gains Exhaustive Planner and +1 to Willpower.
• Bane Gains Close Combat Master.</description>
    </rule>
    <rule name="Intimidation (1SC)" id="7023-e630-b91d-776b" hidden="false">
      <description>1SC: Target an enemy non-vehicle model within 8” and line of sight. The target must make a Willpower roll. If they fail, they can’t make close combat attacks for the rest of the round.</description>
      <alias>Intimidation</alias>
    </rule>
    <rule name="Immortal" id="3cd2-7850-d87e-c198" hidden="false">
      <description>This model doesn’t award VPs to opponents when it is removed as a Casualty.</description>
    </rule>
    <rule name="Invulnerability (X)" id="a34f-ffef-1244-6cac" hidden="false">
      <description>This model is immune to CRT: Casualty. In addition, the first ‘X’ Damage markers received by this model during each round are ignored.</description>
      <alias>Invulnerability (1)</alias>
      <alias>Invulnerability (2)</alias>
      <alias>Invulnerability (3)</alias>
      <alias>Invulnerability (4)</alias>
      <alias>Invulnerability (5)</alias>
    </rule>
    <rule name="Invaluable" id="1ef0-6024-7ba2-87e1" hidden="false">
      <description>When this model becomes a Casualty, the opponent gains 1 additional VP.</description>
    </rule>
    <rule name="Huge" id="4aae-bedd-c79b-017e" hidden="false">
      <description>These models are usually a lot bigger than a standard human, so they are subject to the following special rules:
• Huge models have a base size of 60mm. 
• The model gains +3” to its basic movement distance.
• A Huge model cannot be Pushed or Grabbed, and cannot be Knocked Down in close combat except by attacks from models that also have the Large or Huge trait.
• Huge models suffer a -2 penalty to their Ping! rolls.
• Huge models gain the Charge special attack and can reroll Endurance rolls.</description>
    </rule>
    <rule name="Kapow!!! (1SC)" id="a773-33e3-285e-4f63" hidden="false">
      <description>1SC:</description>
    </rule>
    <rule name="Judgement" id="2f0d-2d1f-923f-8c66" hidden="false">
      <description>When this model makes an enemy model KO, flip a coin or roll a D6: if the result is ‘heads’ (or an even number) remove the enemy model as a Casualty.</description>
    </rule>
    <rule name="Jump Up" id="2933-0698-49c0-54c3" hidden="false">
      <description>If this model suffers the Knocked Down effect, this model can lose 1 action counter to ignore the Knocked Down effect.</description>
    </rule>
    <rule name="Kaos Agent" id="ffe6-ad3f-bca7-b564" hidden="false">
      <description>Before the start of the game, remove 1 of each of your opponents’ dice or counters from the bag or container you use to Take the Lead. This can make the game end before the established Round Limit. In addition, all Henchmen in this model’s crew gain the Trickster trait.</description>
    </rule>
    <rule name="Kevlar Vest" id="bbd3-240e-477f-9547" hidden="false">
      <description>Whenever this model takes Damage, reduce the total number of Damage markers it receives by 1, to a minimum of 1. You may choose which marker is ignored.</description>
    </rule>
    <rule name="Kryptonian (X)" id="bc91-98c4-5f44-c581" hidden="false">
      <description>A model with this trait gains a number of rules determined by the trait’s level (X), see below. A model with this trait can Push, Grab and Knock Down a model with the Large trait even if it is not itself Large or Huge.


In addition, if the scenario takes place at night (for instance, in most Gotham City scenarios), the Kryptonian gains the set of abilities detailed Level
in Table 1: Night Rules. 
If the scenario takes place in daylight, use Table 2: Day Rules. 
If the scenario uses rules for switching between night and day, the table also switches accordingly:


Night Rules:
1: Fast, Invulnerability (1), Natural Immunities.
2: Fast, Invulnerability (2), Natural Immunities, Super Jump.
3: Fast, Invulnerability (3), Natural Immunities, Fly.
4: Fast, Invulnerability (3), Natural Immunities, Fly, Tough Skin.
5: Fast, Invulnerability (4), Natural Immunities, Fly, Flying High, Hover, Tough Skin.
6: Fast, Invulnerability (5), Natural Immunities, Fly, Flying High, Hover, Tough Skin.


Day Rules:
1: Fast, Invulnerability (2), Natural Immunities.
2: Fast, Invulnerability (3), Natural Immunities, Regeneration, Super Jump.
3: Fast, Invulnerability (4), Natural Immunities, Regeneration, Fly.
4: Fast, Invulnerability (4), Natural Immunities, Regeneration, Fly, Swift, Tough Skin.
5: Fast, Invulnerability (5), Natural Immunities, Regeneration, Fly, Flying High, Hover, Swift, Tough Skin.
6: Fast, Invulnerability (6), Natural Immunities, Regeneration, Fly, Flying High, Hover, Swift, Tough Skin.</description>
      <alias>Kryptonian (1)</alias>
      <alias>Kryptonian (2)</alias>
      <alias>Kryptonian (3)</alias>
      <alias>Kryptonian (4)</alias>
      <alias>Kryptonian (5)</alias>
      <alias>Kryptonian (6)</alias>
    </rule>
    <rule name="Lantern (1SC)" id="c9cb-7d7c-08f6-d8f4" hidden="false">
      <description>1SC: If  this model is not in contact with an enemy model, it can illuminate (see Light) an area of 2” radius around itself (measured from the center of its base). This ability lasts until the end of the round.</description>
      <alias>Lantern</alias>
    </rule>
    <rule name="Laser Sight (1MC)" id="a03e-04cc-9a38-e46e" hidden="false">
      <description>1MC: Target one model in line of sight. The target counts as being under the effect of Light until the end of the round, or until the target moves or changes its current position.</description>
      <alias>Laser Sight</alias>
    </rule>
    <rule name="Leadership" id="10cd-cb0f-6b2c-327a" hidden="false">
      <description>All friendly models within 8” of this model may reroll Willpower rolls.</description>
    </rule>
    <rule name="Large" id="e335-dce7-3ce6-2489" hidden="false">
      <description>These models are usually around twice the size of a standard human, so they are subject to the following special rules: 
• Large models have a base size of 40mm.
• The model gains +2” to its basic movement distance.
• A Large model cannot be Pushed or Grabbed, and cannot be Knocked Down in close combat except by attacks from models that also have the Large or Huge trait.
• Large models suffer a -1 penalty to all their Ping! rolls. 
• Large models gain the Charge special attack, and can reroll Endurance rolls.</description>
    </rule>
    <rule name="Lazy Cousins" id="e364-dc3f-9b14-6c7c" hidden="false">
      <description>This model suffers -1 to its Willpower skill if there are no other models with this trait in play.</description>
    </rule>
    <rule name="Let’s go! (1SC, passive)" id="6840-9789-ea5e-da62" hidden="false">
      <description>1SC, passive: When a friendly Henchman ends its activation, roll a die. On a 4+, you may immediately activate this model who has not yet been activated this round. This model activates without giving the opposing player the chance to activate one of his models in between. When this model has finished its turn, subsequent models with the Let’s Go! trait may also attempt to activate, incurring a -1 penalty to the die each time (so the third model in a row activates on a 5+, the fourth and all subsequent model on a 6). A result of 6 is always a success.</description>
      <alias>Let&apos;s go!</alias>
    </rule>
    <rule name="Mental Dominance (2SC)" id="64eb-d550-ac4e-d703" hidden="false">
      <description>2SC: Once per turn, this model may change the position of 4 Action Counters on an enemy non-vehicle model’s Character Card in line of sight.</description>
      <alias>Mental Dominance</alias>
    </rule>
    <rule name="Living Legend" id="db8a-1d79-590a-fbef" hidden="false">
      <description>This model can make two activations each round. Each activation is independent of the other (and cannot usually be made consecutively). At the 
start of the second activation, the model receives 2 Action Counters, which must be allocated immediately.
In addition, once per round, when a trait specifies this model as a target, you may cancel the use of that trait. A crew that includes a Living Legend loses one Pass on Activation each round, if applicable.</description>
    </rule>
    <rule name="Lord of the Sewers" id="0e63-0def-1f06-452e" hidden="false">
      <description>This model does not count towards the maximum number of models that can enter Sewers during a round. This model may start the game in contact with any Sewer Marker. In addition, this model’s Crew generates 1 extra 
Sewer marker. Once per game, this model can exit from a Sewer marker without ending its activation.</description>
    </rule>
    <rule name="Long Guns" id="5b0e-d1af-b336-6c5e" hidden="false">
      <description>If this model is the Boss, select up to three friendly Henchmen with ranged weapons with the Short Range and Firearm rules. Those weapons replace the Short Range rule with the Medium Range rule. These models must be selected before Pre-Game Phase C.</description>
    </rule>
    <rule name="Manipulative" id="f735-5a9f-d9bd-8fff" hidden="false">
      <description>When this model is in your crew, you may redeploy up to two friendly models before phase D4 of the Pre-Game Sequence. In addition, during each of this model&apos;s activations, you may nominate one enemy model to take a Willpower roll. If this roll fails, this model must be the last model in its crew to activate this round.</description>
    </rule>
    <rule name="Magic Tattoos" id="5e34-4c55-e3b0-6aa9" hidden="false">
      <description>This model is immune to the Steal and Fire effects.</description>
    </rule>
    <rule name="Make them perfect" id="0ece-bf38-a8ed-7295" hidden="false">
      <description>This model may perform a Grab special attack without paying the SC cost.</description>
    </rule>
    <rule name="Man of Steel" id="f634-a8cf-581b-4366" hidden="false">
      <description>This model is Immune to the Push, Fire and Enervating effects. If a model with this trait also has Tough Skin, Damage rolls against it suffer a -2 penalty instead of the usual -1.</description>
    </rule>
    <rule name="Master Fighter" id="b39a-6fc3-7844-57b0" hidden="false">
      <description>This model gets a +1 bonus to its Hit rolls when making Unarmed attacks.</description>
    </rule>
    <rule name="Master Marksman" id="8601-125c-ddc9-892e" hidden="false">
      <description>This model can reroll failed Hit rolls when making ranged attacks.</description>
    </rule>
    <rule name="Medic (2SC)" id="ce72-b81d-0772-883b" hidden="false">
      <description>2SC: This model may remove (A) or (BB) markers from a friendly non-vehicle model in contact. This trait may not be used if this model is also in contact with an enemy. The model with the Medic trait may not use the ability on itself. During a round in which a model recovers from KO using this ability it will not have an activation or be able to generate any counters.</description>
      <alias>Medic</alias>
    </rule>
    <rule name="Light Armor" id="4d84-5587-91b0-63a5" hidden="false">
      <description>Damage rolls against this model suffer a -1 penalty.</description>
    </rule>
    <rule name="Menace (2SC)" id="1425-2d9d-d8a1-1648" hidden="false">
      <description>2SC: Enemy models must spend 1 additional Action Counter to attack this model, in close combat or at range. This effect lasts until the end of the round.</description>
      <alias>Menace</alias>
    </rule>
    <rule name="Medium Armor" id="dfca-f8bb-ae16-e492" hidden="false">
      <description>Damage rolls against this model suffer a -2 penalty.</description>
    </rule>
    <rule name="Mind Blast (2SC)" id="1607-4858-7d1f-e3f0" hidden="false">
      <alias>Mind Blast</alias>
      <description>2SC: Target a non-vehicle model within 8” and line of sight. The target must pass a Willpower roll or receive ( AA) damage. A model can use this trait once per round.</description>
    </rule>
    <rule name="Monitoring Device (1SC)" id="3a37-7808-b0d4-bbb4" hidden="false">
      <description>2SC: This model gains Total Vision and its ranged weapons gain Remote Controlled until the end of the round.</description>
      <alias>Monitoring Device</alias>
    </rule>
    <rule name="Mine (1MC+1SC)" id="0273-f045-99d3-ae85" hidden="false">
      <description>1MC+1SC: Place a Mine marker (30mm diameter) in base contact with this model. The model may subsequently move away, leaving the marker in place. When a Vehicle moves into contact with the marker, immediately perform a Strength 1+ Damage roll against it. If the roll is successful, the vehicle suffers (3 Blood), and the marker is removed from play. If the roll fails remove the 
Mine Marker. A model may only place two Mine markers in a game, so make a note when they are used.</description>
      <alias>Mine</alias>
    </rule>
    <rule name="Mind Control Device (2SC)" id="527e-fcdd-d4f0-41b3" hidden="false">
      <description>2SC: Choose a non-vehicle enemy model within 8” and line of sight. The target immediately suffers the Hypnotize effect. If the target fails the 
Willpower roll, gain 1 VP. A model can use this trait once per round.</description>
      <alias>Mind Control Device</alias>
    </rule>
    <rule name="Mind Control Substance" id="4e44-b921-f62b-8203" hidden="false">
      <description>When this model is selected to your crew, friendly models with the Henchman Rank cannot have thir Willpower value reduced b any means and ignore the damage accumulation rules.</description>
    </rule>
    <rule name="Millionaire" id="62af-c8ad-69fe-012e" hidden="false">
      <description>This model&apos;s crew gains an additional $400 Funding.</description>
    </rule>
    <rule name="Minion" id="371b-9679-1cc7-1ed0" hidden="false">
      <description>This model can be hired up to three times in a crew, regardless of its name.</description>
    </rule>
    <rule name="Mob" id="e4cc-dff6-51be-8b96" hidden="false">
      <description>All models in the same crew as this model gain a +1 bonus to their Let’s Go! rolls.</description>
    </rule>
    <rule name="Mortal Kiss (2SC)" id="4463-8632-0819-e362" hidden="false">
      <description>2SC: If this model successfully performs a Grab attack against a non-vehicle model and damages the target, remove the target model as Casualty.</description>
      <alias>Mortal Kiss</alias>
    </rule>
    <rule name="Mobster" id="34d8-2373-daac-5e6e" hidden="false">
      <description>When attacking an Outnumbered model in close combat, this model makes an additional strike at no AC cost.</description>
    </rule>
    <rule name="Multifire (2SC)" id="14a6-7cbc-28cf-0e89" hidden="false">
      <description>2SC: When using a ranged weapon, this model gains +2 to the weapon’s Rate of Fire. The model cannot move in the same round that it uses this ability. A model can use this trait once per round.</description>
      <alias>Multifire</alias>
    </rule>
    <rule name="OCD (Mental Disorder)" id="aa68-26e3-631a-f2bd" hidden="false">
      <description>If this model selects the same target for all of its attacks in a single activation, it gains +1 to Hit rolls to this attack.</description>
    </rule>
    <rule name="Moral Compass" id="2e9f-a340-3237-984d" hidden="false">
      <description>As long as this model is in play and not KO, none of your models may use Coup de Grâce.</description>
    </rule>
    <rule name="Multitask" id="6a15-b178-5bbe-3cfa" hidden="false">
      <description>When you hire this model, chose one of the next options:
• Explorer: Gain the Undercover trait and +1 Movement.
• Hacker: Gain +1 Willpower. Also gains Computer Intrusion (1SC): Once per turn this model may change the position of 2 Action Counters on the Character Card of an enemy model within 8”, as long as the target has the Bot, Robot or Cybernetic trait.
• Defensor: Gain +2 to Endurance. Also gains Force Field (1SC): Target friendly model in base contact benefits from a Ping! roll until the end of the round, even if it is not behind cover.
• Fighter: Gains +1 Attack, +1 Defense and the Claws trait.</description>
    </rule>
    <rule name="Narcotic Dose (DOSE)" id="19bc-7c67-8f5a-30c8" hidden="false">
      <description>A model may use a Narcotics Dose at the beginning of the Raise the Plan phase. If it does so, the model gains the Desensitized trait until the end of the round.</description>
    </rule>
    <rule name="Multiverse Teleportation Device" id="ed21-f8c9-08a7-a5d4" hidden="false">
      <description>This model is not deployed as normal at the start of the game. At the start of the Raise the Plan phase of the second round, place this model anywhere on the board (but not inside a building or similar enclosed space), as long as there is enough space for the model’s volume to fit.</description>
    </rule>
    <rule name="Natural Immunities" id="ea6f-19ea-42a5-3d5f" hidden="false">
      <description>This model cannot be affected by the Blind, Poison or Steal effects.</description>
    </rule>
    <rule name="Negative Speed Force" id="63f6-13fd-6336-4695" hidden="false">
      <description>While this model is in play, the Speed Force Pool maximum is reduced by 2.</description>
    </rule>
    <rule name="Night Vision" id="d751-4c59-9db9-53fe" hidden="false">
      <description>This model may see at any distance, limited only by his line of sight and intervening scenery.</description>
    </rule>
    <rule name="No Mercy!!!" id="13e4-5d3c-9847-b226" hidden="false">
      <description>All friendly Henchmen have CRT: (1 Blood) Damage.</description>
    </rule>
    <rule name="Non-Lethal Ammo" id="4547-bb8f-f900-bf2b" hidden="false">
      <description>When this model attacks other non-vehicle models with its ranged weapons, all (Blood) damage becomes (Stun) damage</description>
    </rule>
    <rule name="Objectives? Puzzles everywhere!!!" id="2548-61b7-ae02-c2fc" hidden="false">
      <description>A crew that includes this model does not follow the normal rules for placing Objectives during Phase D of the Pre-Game Sequence. Instead, this crew uses Clue markers to obtain VPs.</description>
    </rule>
    <rule name="Obstinate" id="5d76-4060-5218-9c31" hidden="false">
      <description>This model’s Action Counters cannot be reallocated/swapped by other models.</description>
    </rule>
    <rule name="Obsessive (Mental Disorder)" id="f709-e36c-3c5a-3d49" hidden="false">
      <description>If this model selects the same target for all of its attacks in a single activation, it gains +1 to Damage rolls of this attack.</description>
    </rule>
    <rule name="One of the Boys" id="49af-cc6e-781d-d72c" hidden="false">
      <description>This model can use the Let’s Go! trait (treat the model like a Henchman for the purposes of this rule).</description>
    </rule>
    <rule name="One-Armed" id="f04e-e361-246f-1b5d" hidden="false">
      <description>This model suffers a -1 penalty to Block rolls.</description>
    </rule>
    <rule name="One-Shot Gun (2AC+2SC)" id="aced-9512-3f89-049c" hidden="false">
      <description>2AC+2SC: One use only. Instead of attacking, this model may choose an enemy model within 8” and line of sight. The target automatically receives one Hit, with Damage (3 Blood), and CRT: (3 Blood). 
This ability is considered a ranged weapon with the Firearm rule, so all rules, traits and abilities that relate to it are in effect – line of sight, Ping! rolls and abilities that affect Firearms (such as Bulletproof vests, and Disruptors).</description>
      <alias>One-Shot Gun</alias>
    </rule>
    <rule name="Perfect Creations" id="6937-356e-d652-9a77" hidden="false">
      <description>If a friendly Professor Pyg is removed from the game as a Casualty, all friendly Dollotrons are removed as well. Dollotrons do not award VP for being made KO or becoming a Casualty. If a friendly Professor Pyg wihin 2” of this model and LoS is hit by an attack (of any kind), this model can spend 1SC to take the hit instead. Dollotrons can only be hired with Professor Pyg.</description>
    </rule>
    <rule name="Plant" id="15b4-ef42-8d35-8271" hidden="false">
      <description>A crew can recruit up to three Plants for every 200 Reputation points, or parts thereof, of the crew limit. Each Plant recruited to your crew grants you two Seed markers (30mm diameter).


Plants are not deployed as usual, instead follow the rules below. After Objectives and all other models have been placed, deploy the seed markers at any point on the tabletop at least 2” away from any other marker (including Sewers, Lampposts, Objectives, etc.).


At the beginning of any Raise the Plan phase, you may replace one or more Seed markers with one of your Plants (place them one by one if you want to replace more than one Plant). Once placed, the Plant is treated as a normal model in your crew.


If a Plant gets Knocked Out, remove it immediately from the game as a Casualty.


Plants can only be Pushed by Large or Huge models. If they are successfully Pushed, it is removed as a Casualty.


A Plant’s basic movement distance is 0, and it cannot use MCs.


Plants do not grant VPs in the usual way. Instead, the total VPs earned for removing a plant as a Casualty is always 1.


Plants have a 4” ‘action area’ radius. Within that radius, Plants are able to attack in close combat (no line of sight is needed), and prevent enemy models from controlling objectives.


Plants can’t control objectives or Manipulate.


Plants are immune to Poison, Knocked-Down, Hypnotize and Blind effects.</description>
    </rule>
    <rule name="Panda Costume" id="0c7c-f719-de41-c598" hidden="false">
      <description>This model must spend 2 Action Counters to stand up.</description>
    </rule>
    <rule name="Paranoid (Mental Disorder) " id="6d07-8246-e781-7ae0" hidden="false">
      <description>If this model has at least 1 Damage marker on its Character Card, then during the Raise the Plan phase it gains 1 free Action Counter, which must immediately be allocated to Defense.</description>
    </rule>
    <rule name="Plead (2SC)" id="af8d-e07f-02ba-65a4" hidden="false">
      <description>2SC: Choose one enemy non-vehicle model within 4” and line of sight of this model. The target must pass a Willpower roll or be unable to attack this model this round.</description>
      <alias>Plead</alias>
    </rule>
    <rule name="Pickpocket" id="a23e-42de-46cd-a6fb" hidden="false">
      <description>This model may perform a Manipulate action while in contact with a KO model. If it does so, immediately follow the rules for the Steal effect.</description>
    </rule>
    <rule name="Planning the move" id="0bc0-701f-f5c7-3ec8" hidden="false">
      <description>All friendly models with the Gotham City Siren rule in this model’s crew (but not this model itself) gain the Primary Target X trait, where X is the Objective of your choice.</description>
    </rule>
    <rule name="Poison Immunity" id="deba-aefd-27a7-f252" hidden="false">
      <description>This model cannot be affected by the Poison effect.</description>
    </rule>
    <rule name="Play Nice!" id="47a3-1c6d-33c0-d89e" hidden="false">
      <description>All friendly Henchmen in this model’s crew gain the Bluff trait.</description>
    </rule>
    <rule name="Poison Master" id="d527-09df-02aa-f631" hidden="false">
      <description>To remove Poison markers inflicted by this model, the poisoned model must roll 3 dice instead of 2 and ignore the lowest result.</description>
    </rule>
    <rule name="Pollution Hate" id="ad59-841c-a6eb-72bc" hidden="false">
      <description>This model cannot enter Sewers.</description>
    </rule>
    <rule name="Power Armor (Passive)" id="48f2-2fcc-4ef7-c2ca" hidden="false">
      <description>Passive: You can spend SC to ignore 1 Damage marker received per each SC used. Damage rolls against this model always suffer a -1 penalty.</description>
    </rule>
    <rule name="Power Dampening (1SC)" id="e74e-89de-dd7c-006a" hidden="false">
      <description>All models within 4” of this model lose the Incorporeal and Invulnerability traits until the end of the round.</description>
      <alias>Power Dampening</alias>
    </rule>
    <rule name="Power Armor MKII (Passive)" id="7ab5-3799-7a11-18db" hidden="false">
      <description>Passive: You can spend SC to ignore 1 Damage marker received per each SC used. In addition, this model is Immune to CRT</description>
    </rule>
    <rule name="Pyromania (Mental Disorder)" id="f290-c686-3af9-a6fe" hidden="false">
      <description>If, at the beginning of its activation, this model can see a model with a Fire marker, this model gains 1 Action Counter.</description>
    </rule>
    <rule name="Protect Me! (1SC, Passive)" id="83d4-358d-2ecb-8d95" hidden="false">
      <description>1SC, Passive: If this model is hit by an enemy attack (close combat or ranged), you may nominate a friendly non-vehicle model within 2” and line of sight to take the attack instead. Resolve any Damage and/or effects against the nominated model.</description>
      <alias>Protect Me!</alias>
    </rule>
    <rule name="Reanimated Owl" id="b542-e5e9-6640-aabf" hidden="false">
      <description>This model can reroll failed rolls to recover from KO. When this model becomes a Casualty, however, the opponent gains +1 VP.</description>
    </rule>
    <rule name="Possessed" id="f6c8-f3dc-1359-fe7c" hidden="false">
      <description>When this model is the Boss you can recruit up to three Henchman with any Affiliation (as long as they don’t have the Bot or Cybernetic traits). Their Affiliation is assumed to be the same as this model. However, Henchmen hired in this way lose -1 Willpower and gain the Self-Discipline trait if they do not have it already.</description>
    </rule>
    <rule name="Psychoanalysis (1SC)" id="57a0-1985-58fb-0ff5" hidden="false">
      <description>1SC: Target a model, friend or foe, within 8” and line of sight, and who is also 
subject to any Mental Disorder Trait. The target ignores the effects of their Mental Disorder until the end of the round.</description>
      <alias>Psychoanalysis</alias>
    </rule>
    <rule name="Psychologist" id="ca26-6996-bc1d-36af" hidden="false">
      <description>This model gains 2VP when it Manipulates a Riddle; no roll is needed. In addition, it can perform the sub-trait, Psychoanalysis.</description>
    </rule>
    <rule name="Psycho" id="f031-4f92-537e-535a" hidden="false">
      <description>This model’s Willpower skill is never reduced under any circumstance or by the effect of any rule. However, the model still loses Action Counters as a result of accumulated Damage markers as usual.</description>
    </rule>
    <rule name="Public Resources" id="30a9-125a-2808-709c" hidden="false">
      <description>If this model is in your crew, you may place one additional Lamppost and Sewer marker before the game starts. In addition, add $300 to the crew’s available Funding.</description>
    </rule>
    <rule name="Radio" id="1a62-cbd3-5b88-d528" hidden="false">
      <description>This model can reroll failed Let’s Go! rolls.</description>
    </rule>
    <rule name="Puzzle Master" id="365b-d86a-69f9-6926" hidden="false">
      <description>This model gains 4VP when it Manipulates a Riddle; no roll is needed. In addition, while this model is in play, enemy models cannot reroll when Manipulating a Riddle under any circumstances.</description>
    </rule>
    <rule name="Quiz Master" id="0498-376c-2c8b-b710" hidden="false">
      <description>You can repeat the Objective: Riddle. Each Riddle objective you take let you to place 3 Riddle Markers instead of 2.</description>
    </rule>
    <rule name="Raised in the Sewers" id="8dd1-5517-8cf9-2de9" hidden="false">
      <description>This model does not count towards the limit of models that can enter in the Sewers during a round.</description>
    </rule>
    <rule name="Ranged Master" id="3724-6edf-2216-d9e0" hidden="false">
      <description>This model gains +1 bonus to its Hit rolls when using ranged attacks.</description>
    </rule>
    <rule name="Rat Tamer" id="0a07-25ee-37c4-8e5d" hidden="false">
      <description>Sewer Swarm models that start their activation within 8&quot; of this model gain +1 to hit rolls and +2 to their basic movement distance until the end of the round.</description>
    </rule>
    <rule name="Repairman (1SC)" id="0c1e-e22b-980e-131f" hidden="false">
      <description>Remove 1 Damage counter from a target vehicle in contact.</description>
      <alias>Repairman</alias>
    </rule>
    <rule name="Reflexes" id="d87e-048b-36b1-1568" hidden="false">
      <description>This model can reroll failed Agility rolls.</description>
    </rule>
    <rule name="Retractable Claws" id="e7b2-6c3f-c51f-f683" hidden="false">
      <description>This model’s Unarmed attacks inflict Damage (1 Blood + 1 Stun) and have the Sharp weapon special rule.</description>
    </rule>
    <rule name="Reinforced Gloves" id="be3c-44df-3c2e-faf3" hidden="false">
      <description>This model’s Unarmed attacks inflict Damage (2 Stun Damage).</description>
    </rule>
    <rule name="Ricochet (1SC)" id="be6c-aee6-cdf0-7b34" hidden="false">
      <description>1SC: After this model successfully hits with a ranged attack, whether not the attack causes Damage, select another model within 2” and line of sight of the target. Perform a free ranged attack against this second target with the same weapon, ignoring line of sight and range. A model can use this trait once per round.</description>
      <alias>Ricochet</alias>
    </rule>
    <rule name="Revenge (2SC)" id="ed18-76df-5760-452b" hidden="false">
      <description>2SC: All friendly Henchmen within 8” gains 1AC. This may take the number of assigned Attack Counters above a model’s normal maximum.</description>
      <alias>Revenge</alias>
    </rule>
    <rule name="Savage Fighter" id="e6c8-fef6-5bd0-0950" hidden="false">
      <description>This model gains +1 to Hit rolls when attempting a Push attack in close combat.</description>
    </rule>
    <rule name="Resilient" id="5029-9345-33de-c2f3" hidden="false">
      <description>This model can reroll failed Endurance rolls.</description>
    </rule>
    <rule name="Roots (2SC)" id="3fb2-4e61-e21c-688f" hidden="false">
      <description>2SC: Target an enemy model within 8” and line of sight. The target model must pass an Agility roll or become Pinned Down until the end of the round.</description>
      <alias>Roots</alias>
    </rule>
    <rule name="Riddler Bots" id="5dd5-c8ab-8c6c-d2d0" hidden="false">
      <description>When you hire a model with the trait ‘Can you solve this?/X’, this trait changes to Autorepair/X (X is the value of the ‘Can you solve this?’ trait) and Multitask.</description>
    </rule>
    <rule name="Runaway" id="940e-e2b3-66e9-b8cc" hidden="false">
      <description>This model is immune to the Arrest trait.</description>
    </rule>
    <rule name="Sapper (2SC)" id="ebbf-a2e4-132e-2108" hidden="false">
      <description>2SC: Once per game, this model may place a marker (30mm diameter) in base contact. The marker has Defense 2, Endurance 4, and is treated as a small obstacle that provides Ping!</description>
      <alias>Sapper</alias>
    </rule>
    <rule name="Safe hands" id="5002-f40e-2571-0666" hidden="false">
      <description>This model is immune to the Steal effect.</description>
    </rule>
    <rule name="Scout" id="49a9-b4ff-fe41-9009" hidden="false">
      <description>This model may perform a free Basic Move action before the first Take the Lead Phase of the game.</description>
    </rule>
    <rule name="Scientific" id="5f75-bf2e-564f-2c4c" hidden="false">
      <description>This model gains +1 to its Special skill. If this model is removed as a casualty, it awards 1 additional VP to the enemy.</description>
    </rule>
    <rule name="Shockwave (1SC)" id="6898-0075-442c-13b6" hidden="false">
      <description>1SC: When this ability is used, remove 1MC from all enemy models within 4” of this model.</description>
      <alias>Shockwave</alias>
    </rule>
    <rule name="Searcher" id="11ee-7754-5cb6-116b" hidden="false">
      <description>Before the game starts, your opponent loses 1 Strategy point.</description>
    </rule>
    <rule name="Self-Discipline" id="b39e-007e-1f9b-9aa5" hidden="false">
      <description>This character cannot be controlled by an opponent (for example, by means of an ability that inflicts the Hypnotize effect).</description>
    </rule>
    <rule name="Small" id="c13c-b54f-6ade-73f0" hidden="false">
      <description>This model gains a +1 bonus to its Ping! rolls.</description>
    </rule>
    <rule name="Sharpshooter" id="a505-9f19-6107-0142" hidden="false">
      <description>Ranged attacks made by this model ignore the Ping! rule.</description>
    </rule>
    <rule name="Shooter" id="751e-7ac4-2e00-c9e2" hidden="false">
      <description>When this model performs ranged attacks against targets within 8”, the target does not benefit from the Ping! rule.</description>
    </rule>
    <rule name="Smuggler" id="f048-2766-2f6e-73cb" hidden="false">
      <description>When this model is included in a crew, its crew can buy equipment listed as Magazines and Radio at half of the cost.</description>
    </rule>
    <rule name="Sneaking" id="1964-47e0-8bc9-4e23" hidden="false">
      <description>At the start of the Recount phase, this model can move up to 2”, using the rules for normal movement (but with no cost in MC).</description>
    </rule>
    <rule name="Special Volume S" id="4daf-3b81-1f67-6394" hidden="false">
      <description>This model uses a base of 40mm, but has the same volume height and rules as a model on a 30mm base. Also, this model gains +1&quot; to its basic movement distance.</description>
    </rule>
    <rule name="Stop! (1SC)" id="1171-976c-97ac-dee9" hidden="false">
      <description>Target a non-vehicle enemy model within 8” and line of sight. Reduce the target model’s Defense skill by 1 (this trait is not cumulative if it used multiple times on the same model). In addition, the target cannot spend MC this round. Both effects last until the end of the round. A model can use this trait once per round.</description>
      <alias>Stop!</alias>
    </rule>
    <rule name="Speed Force Master" id="2c01-0f58-55a2-c2f7" hidden="false">
      <description>This model can spend up to 2 Speed Power counters during the round like Action Counters.</description>
    </rule>
    <rule name="Stealth" id="5bc1-7dc9-35c5-e9c2" hidden="false">
      <description>Enemies can only see this model if it is within 8”. However, it is still subject to other rules that aid detection, such as Light, Total Vision, Superior Sense of Smell, etc.</description>
    </rule>
    <rule name="Steel Hands" id="3725-d59e-f8d7-79fa" hidden="false">
      <description>This model’s Unarmed attacks inflict damage (3 Stun) and inflict the Pushed effect.</description>
    </rule>
    <rule name="Strategist" id="c6aa-57e2-aff9-0ddc" hidden="false">
      <description>A model with Strategist receives 1 additional Strategy point at the beginning of the game.</description>
    </rule>
    <rule name="Street Guy" id="c942-a03e-447a-690b" hidden="false">
      <description>This model may Crouch without spending SC.</description>
    </rule>
    <rule name="Stupid" id="744d-f387-6764-0d9e" hidden="false">
      <description>This model cannot Manipulate anything, under any circumstances.</description>
    </rule>
    <rule name="Sturdy" id="d403-e155-0b00-1084" hidden="false">
      <description>This model loses 1 Action Counter for every 3 Damage markers accumulated, instead of the usual 2.</description>
    </rule>
    <rule name="Survivor" id="9e6b-dddc-c8c8-d64e" hidden="false">
      <description>When this model is made a Casualty, do not remove it from play. Instead, roll a D6: on a result of 5+ the model removes 1 Injury marker and remains in play (the model is Knocked Down, and removes the Action Counters normally for damage accumulation). If the roll is failed, the model becomes a Casualty normally.</description>
    </rule>
    <rule name="Surgical madness (Mental disorder)" id="7a50-a1b0-f618-fc41" hidden="false">
      <description>When this model uses the Medic trait, the target model removes 1 extra Damage marker. In addition, roll 1D6. The target model gains the following trait until the end of its next activation:
1. Weak
2. Stupid
3. Aggressive Schizophrenia
4. The Voices
5. OCD
6. Desensitized</description>
    </rule>
    <rule name="Superior Sense of Smell" id="fc19-6d01-3524-c762" hidden="false">
      <description>This model doesn’t need an uninterrupted line of sight to see its target. Instead, anything within 10” can be seen by this model, even if the target is not under the effect of Light. In addition, this model is immune to the Blind effect.</description>
    </rule>
    <rule name="Supernatural" id="e80c-1f11-bbe0-d13b" hidden="false">
      <description>All attacks made by this model have the Magic weapon rule.</description>
    </rule>
    <rule name="Sustained Defense" id="04b7-a6f5-397f-1576" hidden="false">
      <description>This model may roll 3 Block dice for every 2DC spent.</description>
    </rule>
    <rule name="Swarm" id="058e-c6fc-78bc-de54" hidden="false">
      <description>This model cannot be recruited, but can only be brought into play by the Sewer Swarm X trait. This model gains a +1 bonus to its Ping! rolls. This model cannot control any Objective, but can contest them. The opponent cannot scory any VP by any means for damaging or removing this model from play.</description>
    </rule>
    <rule name="Swift" id="78f3-9b1c-d78b-9970" hidden="false">
      <description>For each 2MC spent to improve its basic movement distance, this model gains an extra +2”.</description>
    </rule>
    <rule name="Tachyon device" id="6480-08af-7abb-c256" hidden="false">
      <description>In the Drain Speed Force sub-phase, if there aren’t any Speed Force counters in the Speed Force pool, this model adds up to 2 Speed Force counters to its own reserve.</description>
    </rule>
    <rule name="Teen Titans Founder" id="e0d4-935e-6bf3-4b1f" hidden="false">
      <description>This model can be recruited in a Teen Titans Team, ignoring ‘The Sidekick’ trait. When operating as part of a Teen titans crew, this model gains +1 Willpower, +1 Strength and the Reinforced Gloves trait.</description>
    </rule>
    <rule name="Takedown (1SC)" id="c365-8be0-c432-d041" hidden="false">
      <description>1SC: When this model makes another model KO with an attack, they may spend 1SC to immediately make the target a Casualty.</description>
      <alias>Takedown</alias>
    </rule>
    <rule name="Teamwork X (ALL)" id="6762-dfef-92a4-556f" hidden="false">
      <description>During its activation, this model may use X Action Counters from any friendly model with the Teamwork trait within 4” as if they were their own.</description>
      <alias>Teamwork 1 (ALL)</alias>
      <alias>Teamwork 2 (ALL)</alias>
      <alias>Teamwork 3 (ALL)</alias>
    </rule>
    <rule name="Teamwork X (Model)" id="eef1-152d-cd96-c343" hidden="false">
      <description>During its activation, this model may use X Action Counters from the named friendly model within 4” as if they were their own.</description>
      <alias>Teamwork 1</alias>
      <alias>Teamwork 2</alias>
      <alias>Teamwork 3</alias>
    </rule>
    <rule name="The Boss" id="f748-6eea-cda1-63cf" hidden="false">
      <description>If this model is the crew’s Boss, friendly Henchmen gain the Expendable trait.</description>
    </rule>
    <rule name="Tension" id="e4bc-8c3f-e32f-52e5" hidden="false">
      <description>This model obtains a +1 bonus to Attack and Defense while it has at least one Damage marker on its Character Card.</description>
    </rule>
    <rule name="The Big Blue Boy Scout (1SC, Passive)" id="6869-ba50-91ff-1d00" hidden="false">
      <description>1SC, Passive: If an allied Bruce Wayne model receives any number of hits while within 4” of this model, the hits may be resolved against this model instead.</description>
      <alias>The Big Blue Boy Scout</alias>
    </rule>
    <rule name="The Fear Master (1SC)" id="7d67-ae9f-8b1a-514d" hidden="false">
      <description>1SC: When this model uses the Inspire Fear trait, it can choose to have it affect all non-vehicle models within 4” and line of sight (friend and foe). When using this ability, Inspire Fear also gains the Gas trait.</description>
      <alias>The Fear Master</alias>
    </rule>
    <rule name="Titan Berserk" id="78cb-beda-03e4-815b" hidden="false">
      <description>When this models uses the Titan Dose rule it gains Invulnerability (3) too.</description>
    </rule>
    <rule name="The Dynamic Duo" id="cd9f-b92b-3e3c-47de" hidden="false">
      <description>This model can activate immediately after a friendly Robin (Boy Wonder) model within 8”, interrupting the usual sequence of play.</description>
    </rule>
    <rule name="The Holiday Killer" id="9c4e-8d38-cadd-5494" hidden="false">
      <description>When this model attacks a target with a Reputation cost higher than 50, it may reroll Hit and Damage rolls.</description>
    </rule>
    <rule name="The Main Man" id="707f-88f0-20c8-9302" hidden="false">
      <description>One use only. At the start the Raise the Plan phase, this model gains +1 to its Attack and Defense skills until the end of the round.</description>
    </rule>
    <rule name="The Murderer" id="78f7-3b31-3e1b-a8f2" hidden="false">
      <description>This model only earns VP for making enemy models KO or Casualty. This model cannot control Objectives.</description>
    </rule>
    <rule name="The Sidekick" id="39c0-4330-aa18-e2cd" hidden="false">
      <description>This model can only be hired if Batman (Modern Age) is leading the crew. While a friendly Batman model is in play, this model gains +1 Strength. If a friendly Batman is removed as a Casualty, this model suffers -1 Willpower.</description>
    </rule>
    <rule name="The Song of the Sirens" id="72b0-ab24-ca85-2df4" hidden="false">
      <description>All friendly Henchmen can use their Bodyguard rule on any model in the crew with the Gotham City Siren trait.</description>
    </rule>
    <rule name="The Target of the Bat" id="1c08-ad4a-566f-e713" hidden="false">
      <description>If a model with Name: Bruce Wayne KO’s this model, the Bruce Wayne model’s controlling player gains 2 bonus VPs.</description>
    </rule>
    <rule name="The Untouchable" id="2d2b-741d-81a0-56b9" hidden="false">
      <description>If this model is your crew’s Boss, friendly Henchmen using the Bodyguard trait to take a hit on its behalf do not spend SC to do so. In addition, while this model is the Boss, all friendly Henchmen gain the For the Family trait.</description>
    </rule>
    <rule name="The Voices (Mental Disorder)" id="30c0-77ed-12ff-935e" hidden="false">
      <description>This model’s Attack Counters (AC) are wildcards. It may spend these counters on any other skill or action, immediately converting them into the appropriate type of counter for that action. When converted, the counters do not count towards the maximum counters the model may hold in any particular skill.</description>
    </rule>
    <rule name="The World’s Greatest Detective" id="3b36-c200-2b3b-73d8" hidden="false">
      <description>At the end of the Raise the Plan phase, you may choose one enemy non-vehicle model on the board (line of sight is not required). The target model must immediately make a Willpower roll. If it fails, you may force the opponent to activate the target model first.</description>
    </rule>
    <rule name="Thirty days has…" id="4ea8-fbcc-440b-684d" hidden="false">
      <description>Depending on the month the game starts Calendar Man gains the specific trait for that month: 
• January-Demotivate, 
• February-Confusion, 
• March-Luck, 
• April-Trickster, 
• May-Disarray, 
• June-Demoralize, 
• July-Veteran, 
• August-Intimidate, 
• September-Cruel, 
• October-Undead, 
• November-Unpredictable, 
• December-Survivor.</description>
    </rule>
    <rule name="Timely arrival" id="c18d-4b39-9477-7e08" hidden="false">
      <description>This model is not deployed as normal at the start of the game. Instead, at the start of the Raise the Plan phase of the second round, you may place this model anywhere on the table, no closer than 4” to any Objective or enemy model. The model’s volume must fit in the chosen position.</description>
    </rule>
    <rule name="Tireless" id="c967-17ab-7b4e-9f19" hidden="false">
      <description>This model can spend up to 1SC like 1MC per turn.</description>
    </rule>
    <rule name="Titan Addict" id="68bb-fb1d-e04c-984a" hidden="false">
      <description>This model may use the Titan Dose rule more than once per game (if it has enough), but no more than once per round.</description>
    </rule>
    <rule name="Total Vision" id="2bc9-33a3-ff0b-2fa5" hidden="false">
      <description>This model may see at any distance, limited only by his line of sight. Additionally, the model’s line of sight can cross any obstacle or terrain element. It may not shoot through these elements, unless using a weapon with the Remote Control rule.</description>
    </rule>
    <rule name="Titan Dose (Dose)" id="2af6-a9e7-4235-446d" hidden="false">
      <description>A model may use a Titan Dose at the beginning of the Raise the Plan phase. If it does so, the model gains +1 to all of its basic skills until the end of the round. The same model cannot use more than 1 Titan dose per game.</description>
    </rule>
    <rule name="Tough Skin" id="7153-8d59-6cf7-9b4b" hidden="false">
      <description>Damage rolls against this model suffer a -1 penalty.</description>
    </rule>
    <rule name="Trickster" id="1dba-ac2f-ebf0-7291" hidden="false">
      <description>At the beginning of this model’s activation, it may reallocate any or all of its Action Counters on its Character Card.</description>
    </rule>
    <rule name="Undercover" id="02ff-ec58-c941-9554" hidden="false">
      <description>After placing Objectives, this model may be deployed up to 8” away from its deployment area, but no closer than 4” to an objective.</description>
    </rule>
    <rule name="Vanish (2SC)" id="dd3e-ea85-3e5d-05df" hidden="false">
      <description>2SC: Make a free EM Smoke Grenades attack (not affected by Rapid Fire) that make an automatic hit. For the duration of this attack, the EM Smoke Grenades gains the Light special rule. If this model does not move during this activation and is beneath the template when it makes this attack, this model may be placed completely within 4” of its current position. This placement does not count as movement, but this model cannot move this activation (or use the Grapple Gun/Batclaw Trait). This model ignores the 
effects and damage caused by his EM Smoke Grenades (like the Smoke effect). This spends a magazine as usual but does not count as this model’s Attack Action.</description>
      <alias>Vanish</alias>
    </rule>
    <rule name="Venom Dose (Dose)" id="7335-6ab8-643c-83ef" hidden="false">
      <description>A model may use a Venom Dose at the beginning of the Raise the Plan phase. If it does so, for the rest of the round the model gains +1 Strength and can reroll Damage rolls when fighting in close combat.</description>
    </rule>
    <rule name="Vulnerability to Fire" id="5a15-dafe-b201-72b1" hidden="false">
      <description>Each Fire marker received causes Damage 
(2 Blood) to this model.</description>
    </rule>
    <rule name="Vertigo Dose (Dose)" id="754e-b2a6-d17f-3ab6" hidden="false">
      <description>A model may use a Vertigo Dose at the beginning of the Raise the Plan phase. If it does so, for the rest of the round the model gains +1 willpower and can reroll failed Willpower and Agility rolls until end of the round.</description>
    </rule>
    <rule name="Venom Enrage" id="1bb9-2e34-9b58-8820" hidden="false">
      <description>When this models uses the Venom dose rule it gains Invulnerability:2 too.</description>
    </rule>
    <rule name="Veteran" id="de8e-f7cc-040e-388b" hidden="false">
      <description>At the beginning of its activation, this model can reallocate up to 2 Action Counters on its Character Card.</description>
    </rule>
    <rule name="Volunteer" id="8d1d-7387-9af6-9fb0" hidden="false">
      <description>This model cannot be removed from play due to the Suicide Mission rule. The Boss of a Suicide Squad Team automatically gains this trait.</description>
    </rule>
    <rule name="Vulnerability to Cold" id="54bd-4935-05e4-ced6" hidden="false">
      <description>If this model receives the Cooled or Freeze effect, they also receive an Injury marker (1 Blood). On some older Character Cards this trait may be listed as ‘Weakness to Cold’.</description>
    </rule>
    <rule name="Weapon Master" id="06cd-f77a-1330-9589" hidden="false">
      <description>This model benefits from a +1 bonus to Hit rolls when making close combat attacks, as long as it is not Unarmed.</description>
    </rule>
    <rule name="Watchmen" id="c324-d7dc-8691-e86d" hidden="false">
      <description>Can only be affiliated with other models with the special ‘Watchmen’ rank. A Watchmen crew does not require a model of the Leader rank. This model is not affected by the Run Away rule, and is considered a Free Agent for awarding VPs.</description>
    </rule>
    <rule name="Wizard of Quiz" id="d866-5602-4afb-ad57" hidden="false">
      <description>Objectives within 6” of this model grant 1 VP less to opponents (to a minimum of 1 VP).</description>
    </rule>
    <rule name="Lazarus Pit Owner" id="41fb-bd6e-a339-ec0d" hidden="false"/>
    <rule name="Shadows Command (1SC)" id="c075-3a95-c318-21c3" hidden="false">
      <alias>Shadows Command</alias>
      <description>Target another friendly model within 8&quot;. This character may immediately perform a free move action of up to 2&quot; or can perform a free manipulate action if it is in contact with scenery that can be manipulated.</description>
    </rule>
    <rule name="Lieutenant (Model)" id="35b6-a3b3-21f8-000f" hidden="false">
      <description>If the crew contains a model with Alias (X), this model reduces its funding costs to 0 and all friendly models with rank Henchman that start their ativation within 8&quot; of this model are affected by the Inspire trait of the friendly model with Alias (X).</description>
      <alias>Lieutenant (Ra&apos;s al Ghul)</alias>
    </rule>
    <rule name="Bulletproof Vest" id="aa58-9b8b-bedf-dab7" hidden="false">
      <description>Firearms weapons require a 4+ to Damage a model with this Trait, instead of the usual 2+.</description>
      <alias>Meta-Skin (B.V.)</alias>
    </rule>
    <rule name="Bullet Time (3SC)" id="166b-1774-16c7-28c9" hidden="false">
      <description>One use only. This model can attack twice during its activation, with different ranged weapons. 
Each Attack must be paid for as usual (2AC) and consumes an Ammunition magazine. This model doesn’t lose RoF this round for firing after moving. 
However, the model cannot Crouch in the same round that it uses this ability.</description>
      <alias>Bullet Time</alias>
    </rule>
    <rule name="Sewer Worker" id="5c6b-36f8-aa7a-56e8" hidden="false">
      <description>One-use only: During this model&apos;s activation, you can place a sewer marker anywhere on the gaming area at least 3&quot; from any other marker.</description>
    </rule>
    <rule name="Sidekick - Let&apos;s go! Reroll" id="a720-f166-b6d7-6977" hidden="false">
      <description>Friendly Henchmen within 8” of this model may reroll failed Let’s Go! rolls.</description>
    </rule>
    <rule name="Blood Scent" id="140e-3c75-9988-0dd0" hidden="false">
      <description>If this model targets a model with at least 1 damage marker, it gains +1 to hit, +1 strength and Bleed (1)</description>
    </rule>
    <rule name="Born in the Darkness" id="3381-6bc0-c6a0-d027" hidden="false">
      <description>When this model is not within the area of effect of a light source, it gains +1 bonus to its Defense rolls and enemy models cannot benefit from the Sneak Attack trait when targeting this model.</description>
    </rule>
  </sharedRules>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Weapons" hidden="false" id="48fe-70de-f325-b2e2">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Katana" hidden="false" id="ce89-03b6-16f8-8f6a">
          <profiles>
            <profile name="Katana" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="b8c2-1f76-7fdd-c354">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="8e22-59fe-c314-a188" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="58ff-7458-f0a4-74e2" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Sharp" id="31a0-46ee-44da-1742" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Smoke Grenade" hidden="false" id="5427-b1dc-0c3e-0bce">
          <profiles>
            <profile name="Smoke Grenade" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="5cbe-8b06-8f34-1cf2">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">-</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Explosive, Mechanical, Smoke, Grenade</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="4512-1145-7131-b525" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="5495-0b42-a120-356f" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Short Range" id="c6bb-9c7f-b182-6c59" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Explosive" id="c3dc-f53f-7b78-514b" hidden="false" type="rule" targetId="7725-e61b-297c-558b"/>
            <infoLink name="Smoke" id="00d0-d656-bb82-6a0b" hidden="false" type="rule" targetId="af3c-653e-29cd-24b8"/>
            <infoLink name="Grenade" id="664d-3c89-eda2-174c" hidden="false" type="rule" targetId="6b3e-875d-4e60-676b"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bow" hidden="false" id="f304-7da2-71ff-2452">
          <profiles>
            <profile name="Bow" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="1a17-b036-d0a4-cb36">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Mechanical, Aim</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="8af0-eba4-65c7-a8fd" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Aim" id="09d1-77ba-6f32-186e" hidden="false" type="rule" targetId="b6cb-5f72-635b-9d94"/>
            <infoLink name="Mechanical" id="4f2d-389a-4734-49eb" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Throwing Knives" hidden="false" id="4525-3dcf-935c-803c">
          <profiles>
            <profile name="Throwing Knives" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="5eb7-aa32-1611-6101">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Sharp, Throwing</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="b71a-69ad-569a-fd99" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Throwing" id="3c4f-f879-cbaa-d378" hidden="false" type="rule" targetId="aa4f-6809-a4af-ae4c"/>
            <infoLink name="Short Range" id="a6b1-13cb-2320-54bf" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Sharp" id="8133-c1f9-2abd-30a6" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Knives" hidden="false" id="1a61-f961-d003-9e73">
          <profiles>
            <profile name="Knives" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="e5cd-0c95-6a61-6fde">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="79ff-e8fd-41e4-9ae4" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="9bd7-7a02-feb9-f038" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Sword" hidden="false" id="4740-3522-b86e-e269">
          <profiles>
            <profile name="Sword" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="e209-f5ee-346b-503e">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="8707-5aee-b3da-5e54" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="3140-ffba-e74d-c9be" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Ice Axe" hidden="false" id="2af6-1438-c06d-6378">
          <profiles>
            <profile name="Ice Axe" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="1a5a-cb31-2302-ab62">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy, CRT (1 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="7da8-21cd-9b68-e7e1" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="771b-38b5-ae30-9cd6" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Heavy" id="0a14-53fe-378e-b171" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
          <rules>
            <rule name="CRT (1 Blood)" id="f609-a78f-fdfa-9d09" hidden="false">
              <description>In case of a critical hit, this weapon causes 1 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Cal 0,60 Gun" hidden="false" id="5487-abf6-a1cf-b76d">
          <profiles>
            <profile name="Cal 0,60 Gun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="052b-49c3-3dc8-9937">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="2c03-542d-59e8-acbc" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="974c-520a-67ef-ae7a" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Axe" hidden="false" id="b896-cde2-09a3-1872">
          <profiles>
            <profile name="Axe" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="7206-09c9-ea13-08b2">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="565f-e66c-8391-ef09" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="57fe-975b-1100-bb0b" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Heavy" id="f8fb-e9c1-5c4b-3bdf" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Automatic Gun" hidden="false" id="0837-9f47-7129-0685">
          <profiles>
            <profile name="Automatic Gun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="1d60-c802-45a9-3efa">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm, Light</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="0880-6f25-f95f-8b2a" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="768c-5a86-ea2c-140d" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="ea56-0205-862a-3402" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Light" id="0269-f720-f205-5066" hidden="false" type="rule" targetId="9245-5460-d3ab-32c8"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Brass Knuckles" hidden="false" id="49c3-bee6-62c3-52f0">
          <profiles>
            <profile name="Brass Knuckles" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="dc36-cb4b-9fe7-3c08">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">-</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="cb2c-243b-925a-1808" primary="false" name="CC Weapon"/>
          </categoryLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Personal Gun" hidden="false" id="cc61-237b-a5ef-71fc">
          <profiles>
            <profile name="Personal Gun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="235e-c682-c22b-0717">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm, Light</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="3b2f-b0ac-98bb-e1b3" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="e810-0fdb-971d-981a" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="5336-ce03-2b63-f815" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Light" id="7ed0-dd3f-c132-dacf" hidden="false" type="rule" targetId="9245-5460-d3ab-32c8"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Explosive Grenade" hidden="false" id="2833-f3c0-cee1-471b">
          <profiles>
            <profile name="Explosive Grenade" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="aeb1-98fd-627f-b8fc">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, S. Range, Explosive, Grenade</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="ad99-c268-36fd-dfb6" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="9fb9-4393-a83e-84fe" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Explosive" id="2c52-7fe2-40ed-a8e5" hidden="false" type="rule" targetId="7725-e61b-297c-558b"/>
            <infoLink name="Grenade" id="1d79-cd43-8bad-76bd" hidden="false" type="rule" targetId="6b3e-875d-4e60-676b"/>
            <infoLink name="Firearm" id="a24e-b35d-38a0-0171" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Tube" hidden="false" id="09df-21fa-f614-222e">
          <profiles>
            <profile name="Tube" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="b53e-66a9-9efc-9562">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="5c28-aae3-d38b-3f6d" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="45af-4cec-ae02-30b4" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Handy" id="d198-2dfe-5f5c-3295" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shield" hidden="false" id="d6cf-b7f8-5da2-cf07">
          <profiles>
            <profile name="Shield" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="7d17-5754-f2c5-4f6e">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">-</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Protective</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="738a-208c-c403-fefc" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Protective" id="a736-072b-cc16-dcb6" hidden="false" type="rule" targetId="4e8e-6ac9-8497-579b"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Combined Sniper Guns" hidden="false" id="4a15-87f7-ecfe-d15e">
          <profiles>
            <profile name="Combined Sniper Guns" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="1a50-962a-65bc-d9f5">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, Aim, Scope, M. Range</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="b48c-e04e-494d-d5bf" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="fb7b-490a-e7e0-519d" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Medium Range" id="8476-be9f-06b2-32a7" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Aim" id="7372-580b-0408-6560" hidden="false" type="rule" targetId="b6cb-5f72-635b-9d94"/>
            <infoLink name="Scope" id="1e16-38e4-108c-1873" hidden="false" type="rule" targetId="e1ee-b548-15a7-7f62"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Crowbar" hidden="false" id="09a3-d3e4-971d-6a1b">
          <profiles>
            <profile name="Crowbar" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="850f-b6d3-9537-03c5">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="4724-ef24-2f05-268d" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="9d70-1871-aa90-471e" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Handy" id="63c0-fa46-0a54-90e7" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Handgun" hidden="false" id="3e08-c26d-8249-ac8a">
          <profiles>
            <profile name="Handgun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="6dac-5a26-927c-ca4a">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="12ac-03e5-3cf9-5747" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="976c-9899-97bc-d0bb" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="7fee-a895-7817-6b8a" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Broken Glass" hidden="false" id="350c-c9d9-25c8-e3aa">
          <profiles>
            <profile name="Broken Glass" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="9acc-0eca-78d8-29c2">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp, One-use</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="c6f0-7525-f7d9-db05" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="7045-cada-ebea-7322" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
            <infoLink name="One-Use" id="0d89-5385-4b38-14e9" hidden="false" type="rule" targetId="8e5b-05c0-1432-375d"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hidden Weapon" hidden="false" id="b98c-659d-4530-ab43">
          <profiles>
            <profile name="Automatic Gun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="05ea-172a-7114-baf2">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm, Silencer, Assault (2)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="00b1-7ef8-c916-ebdc" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="9eb9-f89f-d7b7-33c9" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="769d-5b85-cffa-8705" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Assault (X)" id="12cf-cd27-b632-2804" hidden="false" type="rule" targetId="8c32-0cf1-2cdb-607f"/>
            <infoLink name="Silencer" id="af32-ee35-b38a-238e" hidden="false" type="rule" targetId="93f9-7d2c-76f6-28fe"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Automatic Rifle" hidden="false" id="9488-311e-ae48-8c50">
          <profiles>
            <profile name="Automatic Rifle" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="ccb6-8fad-830a-2ebb">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="6fd8-91ba-7040-0bd4" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="d644-b8f0-1b0f-5f7e" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="EM Smoke Grenade" hidden="false" id="6396-90de-9e7f-f1b6">
          <profiles>
            <profile name="EM Smoke Grenade" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="3006-9b7d-a9be-c9e3">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">-</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Explosive, Mechanical, Smoke, Electric, Grenade</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="cdba-ab35-f9f0-1165" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="2ae3-bf64-e9e0-14e6" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Explosive" id="17d6-864d-7f6e-26b5" hidden="false" type="rule" targetId="7725-e61b-297c-558b"/>
            <infoLink name="Mechanical" id="54f3-c310-0e6c-d620" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Smoke" id="1ac8-b76e-8a97-9b4b" hidden="false" type="rule" targetId="af3c-653e-29cd-24b8"/>
            <infoLink name="Electric" id="abb3-8bdb-fcf2-1d16" hidden="false" type="rule" targetId="1fdb-143c-e420-5663"/>
            <infoLink name="Grenade" id="d72c-fb07-8a75-406c" hidden="false" type="rule" targetId="6b3e-875d-4e60-676b"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Batarang" hidden="false" id="441d-4be3-9299-6bd3">
          <profiles>
            <profile name="Batarang" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="3a60-468d-7d24-1e84">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Throwing, M. Range, Remote Controlled</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="fc56-e327-e4ee-4c48" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Throwing" id="b6d1-9f07-2f6b-d80d" hidden="false" type="rule" targetId="aa4f-6809-a4af-ae4c"/>
            <infoLink name="Medium Range" id="b716-ed07-619f-f570" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Remote Controlled" id="8cec-c10c-e91e-cd1a" hidden="false" type="rule" targetId="278a-8fd4-b5a6-2874"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Modified Automatic Gun (Silencer)" hidden="false" id="a535-d86a-a5ed-8a84">
          <profiles>
            <profile name="Modified Automatic Gun (Silencer)" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="26f2-15d1-7eec-2796">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm, Silencer</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="3c84-13ac-e658-0a9c" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="c57c-abda-1e87-31b4" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="4105-a880-5511-b558" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Silencer" id="2b42-20c1-c401-c7af" hidden="false" type="rule" targetId="93f9-7d2c-76f6-28fe"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Baton" hidden="false" id="4abf-1736-893b-6929">
          <profiles>
            <profile name="Baton" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="1730-fb5e-72fc-0051">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="1601-df89-328f-f66c" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="15ce-fd68-91b0-8477" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Heavy" id="f8d9-2b45-bcf8-be7a" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Tonfa" hidden="false" id="8be1-76e0-257a-1369">
          <profiles>
            <profile name="Tonfa" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="5b89-a627-1d90-a46b">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Defensive, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="e94b-46e9-e605-c569" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="49f3-8f61-22f1-c0eb" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Defensive" id="e609-e55e-78db-9eb3" hidden="false" type="rule" targetId="714f-82cf-5d4a-d881"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Chain" hidden="false" id="4803-e496-2d46-47df">
          <profiles>
            <profile name="Chain" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="4536-ec8d-282b-9c45">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Heavy, Reach</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="3000-8eb6-3486-7c1e" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="afe5-0d1c-1222-38f4" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Reach (X)" id="55f2-656c-ccc7-a8e3" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Batlings" hidden="false" id="01f6-603b-7ae9-2e7f">
          <profiles>
            <profile name="Batlings" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="2f5d-e56a-0443-3280">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Throwing, S. Range, Light</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="e9bd-1305-ca00-755b" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Throwing" id="90ce-a04b-5b78-c179" hidden="false" type="rule" targetId="aa4f-6809-a4af-ae4c"/>
            <infoLink name="Short Range" id="c79f-795b-b91a-1f4e" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Light" id="8ad8-9032-6e21-5c2b" hidden="false" type="rule" targetId="9245-5460-d3ab-32c8"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Extendable Baton" hidden="false" id="d47b-5b74-6865-2a4d">
          <profiles>
            <profile name="Extendable Baton" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="3712-d47c-b16a-9d4b">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="4ca8-1ed4-95ef-be6e" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="0af1-b5fd-ec89-3c62" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Reach (X)" id="c8df-8bae-594a-a70a" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Long Electric Baton" hidden="false" id="9093-d9db-b494-0996">
          <profiles>
            <profile name="Long Electric Baton" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="13d3-c6ea-623a-adaa">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Mechanical, Reach</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="0753-f7b6-08db-e081" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Reach (X)" id="3b22-3abe-ebd8-df12" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
            <infoLink name="Handy" id="a639-21d0-e22c-f23b" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Mechanical" id="c749-1133-812b-e17e" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Frag Grenade" hidden="false" id="dda7-7ee8-38ff-0b9c">
          <profiles>
            <profile name="Frag Grenade" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="3484-4748-d68c-7814">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, S. Range, Explosive, Grenade, CRT (1 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="739a-3296-d0bd-4a4a" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="374d-1e29-39cf-2134" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Explosive" id="6a4c-2208-a22f-68fc" hidden="false" type="rule" targetId="7725-e61b-297c-558b"/>
            <infoLink name="Short Range" id="8e14-feb7-5722-76e8" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Grenade" id="2d33-60e8-0e64-413f" hidden="false" type="rule" targetId="6b3e-875d-4e60-676b"/>
          </infoLinks>
          <rules>
            <rule name="CRT (1 Blood)" id="8a1c-1336-37a0-c4ec" hidden="false">
              <description>In case of a critical hit, this weapon causes 1 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Taser" hidden="false" id="bf32-efcb-399b-0cf3">
          <profiles>
            <profile name="Taser" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="0387-6106-b761-293f">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach, Mechanical, CRT (Shock)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="998b-84a9-1f08-0534" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <rules>
            <rule name="CRT (Stun)" id="a7df-6ac5-ae49-dc16" hidden="false">
              <description>In case of a critical hit, this weapon causes the Stun effect for the targeted model.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink name="Reach (X)" id="9ee1-8983-1c1e-bbb4" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
            <infoLink name="Mechanical" id="bd09-dfd7-f02b-2288" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Electric Baton" hidden="false" id="cec9-1ad9-3ac4-8a6e">
          <profiles>
            <profile name="Electric Baton" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="ce8b-4893-2c36-9983">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Mechanical</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="c1e3-f695-05a6-c270" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="06aa-be31-56b8-a56a" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Handy" id="515f-6a4f-8559-4a9f" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Baseball Bat" hidden="false" id="546c-790b-6430-6015">
          <profiles>
            <profile name="Baseball Bat" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="f9e6-2e41-c3b6-164f">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="f95f-62e7-fe19-a6a7" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="95ef-7190-e506-b891" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Heavy" id="0695-42ba-df62-cd4b" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="BiggaSticka" hidden="false" id="78dc-2f8e-ffe6-2a15">
          <profiles>
            <profile name="BiggaSticka" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="8c69-d03b-95f5-6537">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Heavy, CRT (3 Stun)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="f33d-1553-5db3-7fe9" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <rules>
            <rule name="CRT (3 Blood)" id="25fc-8e3f-b8a9-eb8f" hidden="false">
              <description>In case of a critical hit, this weapon causes 3 Blood damage.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink name="Heavy" id="cd77-d82c-d760-286e" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Combat Machete" hidden="false" id="3000-be16-46ab-87e4">
          <profiles>
            <profile name="Combat Machete" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="f2be-7930-cf2c-c2ca">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="996f-84bf-9bd1-82fa" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="becc-090c-23be-dd51" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Barret" hidden="false" id="c4e3-9e2f-85df-41ca">
          <profiles>
            <profile name="Barret" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="6e12-0329-db70-176b">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">4 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, Reload, Aim, Anti-Tank, Scope, CRT (3 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="731c-64ed-4f45-0618" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="fcb1-b5df-4c17-4bbe" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Reload" id="1d98-ebf8-ac06-ae19" hidden="false" type="rule" targetId="f2fc-7249-231f-b5cb"/>
            <infoLink name="Aim" id="a1bc-2b46-1fde-4f98" hidden="false" type="rule" targetId="b6cb-5f72-635b-9d94"/>
            <infoLink name="Anti-Tank" id="d0f2-a708-1928-3109" hidden="false" type="rule" targetId="5db8-f31a-eafb-c0b4"/>
            <infoLink name="Scope" id="9c91-fd62-87f9-75d5" hidden="false" type="rule" targetId="e1ee-b548-15a7-7f62"/>
          </infoLinks>
          <rules>
            <rule name="CRT (3 Blood)" id="132b-da49-e746-becb" hidden="false">
              <description>In case of a critical hit, this weapon causes 3 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="9mm Twin Cannons" hidden="false" id="def7-5a7c-62e4-1383">
          <profiles>
            <profile name="9mm Twin Cannons" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="3cc5-a333-20c0-64b1">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">M. Range, Firearm, Light</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="610f-f7f7-265f-0877" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Medium Range" id="4e85-703d-0930-9f2f" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Firearm" id="de0f-e34e-d4f4-ef70" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Light" id="907a-6dba-0f45-6f2a" hidden="false" type="rule" targetId="9245-5460-d3ab-32c8"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Syringe Fear Claw" hidden="false" id="7e92-1207-9a30-16f0">
          <profiles>
            <profile name="Syringe Fear Claw" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="8dda-3a4a-0da7-53ac">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Scared</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="1900-ea92-ba5a-b18c" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="dab1-b03d-a169-2d49" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Scared" id="25e0-ed9c-7303-b0a7" hidden="false" type="rule" targetId="53a6-7e4a-6816-b3c1"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Carbine" hidden="false" id="c842-c325-eeca-7d06">
          <profiles>
            <profile name="Carbine" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="1c85-d02f-9629-f195">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">5</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, M. Range, Assault (3)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="7e42-459a-1bc2-3999" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Medium Range" id="b03f-ebf2-a001-094d" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Firearm" id="b250-bc85-b1bf-3b3c" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Assault (X)" id="6484-aa2f-3ef5-380e" hidden="false" type="rule" targetId="8c32-0cf1-2cdb-607f"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hunting Knife" hidden="false" id="9bd4-1d6f-5ca7-8007">
          <profiles>
            <profile name="Hunting Knife" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="7ff5-e98e-60ba-d586">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="2109-5fbb-12fa-a215" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="bedb-7cf2-d11b-7a1c" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Gun" hidden="false" id="1a96-90ee-ff27-70cd">
          <profiles>
            <profile name="Gun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="2b50-7968-2711-21ff">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="0df2-8651-7a40-33eb" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="f7c0-aaf2-5135-b81a" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="620c-e9d2-5e39-976e" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Custom Carbine" hidden="false" id="5637-2261-f7df-5d29">
          <profiles>
            <profile name="Custom Carbine" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="61c8-b364-dafc-d3ee">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">5</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, M. Range, Assault (3), Silencer</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="7c74-45f4-da56-18ec" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="e206-e3d5-94df-a61f" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Medium Range" id="c4c2-3783-7f04-64d1" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Assault (X)" id="af0f-2960-459a-cf0e" hidden="false" type="rule" targetId="8c32-0cf1-2cdb-607f"/>
            <infoLink name="Silencer" id="9828-91e0-ad90-106c" hidden="false" type="rule" targetId="93f9-7d2c-76f6-28fe"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Maul" hidden="false" id="9766-21ed-e777-750b">
          <profiles>
            <profile name="Maul" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="70cd-08f4-5303-a773">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Heavy, Handy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="0620-13f3-a020-0f15" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="7ee3-6477-4ec3-3266" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Handy" id="44a3-0100-1d9a-449d" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shiv" hidden="false" id="dcf0-b356-38ec-2897">
          <profiles>
            <profile name="Shiv" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="7d91-78ee-5005-4acb">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="c437-f0af-d589-4e5d" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="7ed5-fea7-4921-3b1d" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Crossbow" hidden="false" id="b1d9-623e-028c-386e">
          <profiles>
            <profile name="Crossbow" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="53ac-4e02-d0d9-b371">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Mechanical, Reload</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="d91a-7a6c-975c-996a" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="18be-31ce-d632-5897" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Reload" id="bb63-903d-7ffd-23e7" hidden="false" type="rule" targetId="f2fc-7249-231f-b5cb"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Drug Spray" hidden="false" id="048f-0eee-af2c-1309">
          <profiles>
            <profile name="Drug Spray" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="c0f2-a08b-8dcf-3dbf">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Expansive, Enervating (2)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="ce2a-cd0f-0939-74bc" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Expansive" id="07ed-ab9d-686e-0a72" hidden="false" type="rule" targetId="858c-f744-3397-15c8"/>
            <infoLink name="Enervating (X)" id="03dd-69e4-2470-a2b6" hidden="false" type="rule" targetId="4b56-62b6-ddcd-6880"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="SMG" hidden="false" id="fc9f-1af3-984e-2593">
          <profiles>
            <profile name="SMG" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="5053-558d-ab7a-69bc">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">4</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, S. Range</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="5661-5382-ce50-2a2d" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="a72f-b46f-a185-6d1e" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Short Range" id="74f3-1242-aa19-f6bc" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Spear" hidden="false" id="fb1e-8929-abd9-b79f">
          <profiles>
            <profile name="Spear" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="64e6-6ff7-04e3-81c7">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach, CRT (2 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="aae8-286a-8646-ede0" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Reach (X)" id="6840-e6a5-b0e1-6af2" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
          <rules>
            <rule name="CRT (2 Blood)" id="cbe5-4f7b-f6d9-6102" hidden="false">
              <description>In case of a critical hit, this weapon causes 2 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Amazon Bow" hidden="false" id="a15e-8a43-c652-e565">
          <profiles>
            <profile name="Amazon Bow" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="b9ae-8b5e-72a2-5621">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">4</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Mechanical, Aim</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="049e-ab8b-4db6-1095" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="5abd-e320-4bce-c503" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Aim" id="4514-838e-0356-b495" hidden="false" type="rule" targetId="b6cb-5f72-635b-9d94"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Whip" hidden="false" id="3985-a4c5-7c64-c8ed">
          <profiles>
            <profile name="Whip" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="7212-721b-5911-41c3">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="b54d-cbf7-bf68-4043" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Reach (X)" id="d192-8043-0d1f-5a4e" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Rocket Launcher" hidden="false" id="66ec-ec3a-0d71-031c">
          <profiles>
            <profile name="Rocket Launcher" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="e32c-94a8-c2ea-51f5">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Anti-Tank, Explosive, Firearm, M. Range, Aim</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="7e39-7668-6324-6352" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Anti-Tank" id="1f54-f328-75d7-0795" hidden="false" type="rule" targetId="5db8-f31a-eafb-c0b4"/>
            <infoLink name="Explosive" id="0d7c-ed65-2293-04ed" hidden="false" type="rule" targetId="7725-e61b-297c-558b"/>
            <infoLink name="Firearm" id="b295-3890-1143-12d5" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Medium Range" id="fd5b-895d-f9e1-e1a7" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Aim" id="ed03-1140-4e4d-9898" hidden="false" type="rule" targetId="b6cb-5f72-635b-9d94"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Machete" hidden="false" id="6a63-fa20-83eb-79cf">
          <profiles>
            <profile name="Machete" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="75c0-6fae-8007-3a79">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="c6ef-f4cd-3a0f-56dd" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="60dd-1240-f90b-6a44" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Sharp" id="d9fd-a739-9d1e-4d9d" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Acid Bottle" hidden="false" id="0749-311c-efec-e63e">
          <profiles>
            <profile name="Acid Bottle" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="737c-e412-ce8d-a760">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Acid, Caustic, Reach</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="89b7-6976-6f2f-463f" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Acid" id="59f1-92a6-9c86-a25b" hidden="false" type="rule" targetId="524d-ab5a-b390-e887"/>
            <infoLink name="Caustic" id="d057-9850-5854-056c" hidden="false" type="rule" targetId="6f40-ce3d-f6c7-5376"/>
            <infoLink name="Reach (X)" id="245e-22e2-ba8a-b9e7" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Petrol Bomb" hidden="false" id="565d-095e-244e-7de4">
          <profiles>
            <profile name="Petrol Bomb" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="35d2-1637-a833-f6af">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Mechanical, S. Range, Fire</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="ab40-e504-2556-17d0" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="4962-5c3d-9ea0-d1d8" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Short Range" id="9a2f-e4d2-cf18-e899" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Fire" id="9a4e-1525-d40e-b3d7" hidden="false" type="rule" targetId="8a5d-4863-ee83-f9d5"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Long Spiked Heals" hidden="false" id="784d-29ac-c3c9-b139">
          <profiles>
            <profile name="Long Spiked Heals" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="34d9-9b1f-9a96-73ea">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Heavy, CRT (1 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="2726-3a33-a241-3186" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="f98a-ea69-1b78-bc2f" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Heavy" id="0f3d-8990-3f74-e0ef" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
          <rules>
            <rule name="CRT (1 Blood)" id="fdf0-a79f-8e72-5417" hidden="false">
              <description>In case of a critical hit, this weapon causes 1 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Metamorphic Weapon" hidden="false" id="f245-3600-922d-9538">
          <profiles>
            <profile name="Metamorphic Weapon" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="d356-47c8-2b51-d646">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach, Handy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="70ce-859b-97af-2960" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="4f7c-ff1b-72af-ad20" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Reach (X)" id="fcfa-977a-7e69-1aa3" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Thompson" hidden="false" id="fab2-43a4-288a-5bbc">
          <profiles>
            <profile name="Thompson" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="b7cb-e5b4-6e1b-73ee">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">M. Range, Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="cb75-1684-3943-dc71" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Medium Range" id="d248-1eea-f01e-25fa" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Firearm" id="628e-70ed-7623-4b80" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Two Face&apos;s Thompson" hidden="false" id="71e0-83cf-6a97-2372">
          <profiles>
            <profile name="Two Face&apos;s Thompson" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="b0b0-9d87-70d5-2bee">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">4</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">M. Range, Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="58f8-7030-3e2c-b3a0" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Medium Range" id="a617-a583-e8f2-a4a6" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Firearm" id="0940-d7b8-4023-babc" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hand Cannon" hidden="false" id="8f14-ab14-e85a-ed0b">
          <profiles>
            <profile name="Hand Cannon" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="ce62-c2ce-1cdc-e381">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Beam, S. Range, Push</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="decf-4cf4-389d-47f9" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Beam" id="caa8-48dd-ea9b-54a2" hidden="false" type="rule" targetId="02b5-671c-bc5e-9da3"/>
            <infoLink name="Short Range" id="1fbd-b32c-6aa9-0ca9" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Push" id="412a-da12-76ac-cd3e" hidden="false" type="rule" targetId="aeee-63a5-857c-8643"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Electric Blade" hidden="false" id="aa15-63e0-9c3c-65db">
          <profiles>
            <profile name="Electric Blade" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="95f0-0732-44ba-eed4">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Mechanical, Electric, Crushing</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="30e6-c1fe-d359-2658" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="759f-d1f0-7d56-8d30" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Electric" id="3d2c-ebb8-c354-0ab9" hidden="false" type="rule" targetId="1fdb-143c-e420-5663"/>
            <infoLink name="Crushing" id="38e4-ff09-6492-8dc0" hidden="false" type="rule" targetId="0570-47ea-c898-e829"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Laser Cannon" hidden="false" id="f2df-4c2a-902a-2501">
          <profiles>
            <profile name="Laser Cannon" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="6271-dee9-fb6c-0f61">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">4</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Beam, M. Range, Assault (2)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="a404-e6bf-2317-0174" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Beam" id="dc6c-c48c-386f-0270" hidden="false" type="rule" targetId="02b5-671c-bc5e-9da3"/>
            <infoLink name="Medium Range" id="b7c4-9166-7a64-fb42" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Assault (X)" id="08f0-b0d1-a80d-6184" hidden="false" type="rule" targetId="8c32-0cf1-2cdb-607f"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Reinforced Bo" hidden="false" id="587d-bbd1-6c8b-0b5b">
          <profiles>
            <profile name="Reinforced Bo" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="a201-5c5b-647b-b711">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Reach</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="dd2e-27f1-c33b-0841" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="4ed1-1054-2be7-91ab" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Reach (X)" id="ceaf-b091-3aa0-bf94" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Razorangs" hidden="false" id="e04a-493b-3770-8474">
          <profiles>
            <profile name="Razorangs" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="3523-eda7-85fd-2734">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Throwing, S. Range, Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="6c65-e58e-0b62-ef9a" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Throwing" id="a6f5-3226-2bb7-e172" hidden="false" type="rule" targetId="aa4f-6809-a4af-ae4c"/>
            <infoLink name="Short Range" id="5f71-a8bd-40b0-1798" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Sharp" id="2b39-f97c-0270-1881" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Heavy Handgun" hidden="false" id="a956-4932-5bb3-ecaf">
          <profiles>
            <profile name="Heavy Handgun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="f029-27de-efd7-296e">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Firearm, One-use</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="2358-0aa0-ff51-1c5f" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Short Range" id="dbcf-16c9-ec3f-dc30" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Firearm" id="eec7-1f3b-e33f-b338" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="One-Use" id="f4b9-7059-2d1b-c1f2" hidden="false" type="rule" targetId="8e5b-05c0-1432-375d"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Sickle" hidden="false" id="cb9c-5e6c-771b-da57">
          <profiles>
            <profile name="Sickle" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="4dbd-ccd4-871e-52b3">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach, Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="c3e8-f10d-688e-8247" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Reach (X)" id="0c7c-79c0-1016-9f39" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
            <infoLink name="Sharp" id="628e-d3ef-0a13-c3f6" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Flamethrower" hidden="false" id="662a-04fd-b524-bd4e">
          <profiles>
            <profile name="Flamethrower" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="697f-88e9-3749-ffbd">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood + 1 Stun, 1 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Mechanical, Fire, Expansive</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="7e89-eae6-a17f-8e26" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Mechanical" id="c799-38e0-c54d-604e" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Expansive" id="e470-01e5-8374-875c" hidden="false" type="rule" targetId="858c-f744-3397-15c8"/>
            <infoLink name="Fire" id="967c-e085-152a-0e74" hidden="false" type="rule" targetId="8a5d-4863-ee83-f9d5"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shock Gloves" hidden="false" id="5282-6aa7-0c0f-3030">
          <profiles>
            <profile name="Shock Gloves" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="0b23-649d-b288-17f9">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">CRT (Stun)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="fbe2-d69f-925b-e648" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <rules>
            <rule name="CRT (Stun)" id="44b3-b939-2da2-96dd" hidden="false">
              <description>In case of a critical hit, this weapon causes the Stun effect for the targeted model.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="MG" hidden="false" id="b5c7-e529-7b39-79a3">
          <profiles>
            <profile name="MG" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="afd1-c6cb-183d-444f">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, M. Range</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="942e-36e2-64f2-884f" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="bb33-3ef3-4976-d79f" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Medium Range" id="1cc6-d91f-e822-b671" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Throwing Meat Knives" hidden="false" id="f750-0b3f-72e8-930a">
          <profiles>
            <profile name="Throwing Meat Knives" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="82c1-63fa-f99d-c494">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">1 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">S. Range, Sharp, Throwing, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="5696-4117-c2d8-90d7" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Throwing" id="c878-55f3-34bf-afdd" hidden="false" type="rule" targetId="aa4f-6809-a4af-ae4c"/>
            <infoLink name="Short Range" id="1c48-709c-8d81-1b55" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
            <infoLink name="Sharp" id="b2cc-c1f9-747e-9581" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
            <infoLink name="Heavy" id="5c90-45f4-1fa1-34d2" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Meat Knife" hidden="false" id="7423-909b-963f-0b1b">
          <profiles>
            <profile name="Meat Knife" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="59c1-dae6-477b-93cf">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp, Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="9958-d6b2-b8f6-df0a" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="06b3-e40b-32f4-3a70" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Sharp" id="64d3-ef99-4c57-2343" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Katar" hidden="false" id="71d7-a511-af67-1fd1">
          <profiles>
            <profile name="Katar" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="a941-b202-7479-6961">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp, CRT (2 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="0f4b-b53e-4300-4826" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="dd63-4341-ca58-3e66" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
          <rules>
            <rule name="CRT (2 Blood)" id="a02d-0a33-fe73-53a0" hidden="false">
              <description>In case of a critical hit, this weapon causes 2 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Improvised Maul" hidden="false" id="fe90-3d86-3479-6965">
          <profiles>
            <profile name="Improvised Maul" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="60e6-aeef-6557-a7a4">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Heavy, Handy, Reach</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="2428-d352-3da6-ffeb" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="490b-63d7-f79a-3f63" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
            <infoLink name="Reach (X)" id="a212-7f94-696b-c574" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
            <infoLink name="Handy" id="e1ac-2e63-0ae8-9311" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Mallet" hidden="false" id="1cd4-a6f5-7ba9-0f53">
          <profiles>
            <profile name="Mallet" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="326e-b6bb-7de1-4f97">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Heavy</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="e5dc-98f7-a047-e070" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Heavy" id="c216-581d-bf45-0e36" hidden="false" type="rule" targetId="55b2-7f90-5e2e-cddd"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Big Spike" hidden="false" id="da53-9537-5452-a157">
          <profiles>
            <profile name="Big Spike" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="a487-a991-8982-28d7">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Reach, CRT (1 Blood)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="2e16-ba97-c3e9-280c" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Handy" id="b1d7-55ca-d289-d6b3" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Reach (X)" id="0781-6423-955e-d397" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
          </infoLinks>
          <rules>
            <rule name="CRT (1 Blood)" id="f285-1309-0dd5-27e0" hidden="false">
              <description>In case of a critical hit, this weapon causes 1 Blood damage.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Dual Blade" hidden="false" id="c5dc-493d-24f4-1e9d">
          <profiles>
            <profile name="Dual Blade" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="1135-3272-2205-bdaf">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="58eb-6839-2462-f756" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="ae83-050d-c432-3367" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Death Ray" hidden="false" id="e6af-d092-9117-c36c">
          <profiles>
            <profile name="Death Ray" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="b357-99ae-9bab-ad68">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Beam, M. Range, Reload, CRT (Casualty)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="4714-f20b-c83d-a74b" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Beam" id="be31-ce4e-2a39-8b3e" hidden="false" type="rule" targetId="02b5-671c-bc5e-9da3"/>
            <infoLink name="Medium Range" id="eb0c-9b4b-346c-b0a4" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Reload" id="083f-d5be-118c-eb9a" hidden="false" type="rule" targetId="f2fc-7249-231f-b5cb"/>
          </infoLinks>
          <rules>
            <rule name="CRT (Casualty)" id="3ca1-d7a3-23e0-c6b4" hidden="false">
              <description>In case of a critical hit, this weapon removes the targeted model as a casualty.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Catarangs" hidden="false" id="6f0b-ac1e-53ac-d78e">
          <profiles>
            <profile name="Catarangs" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="3d67-83ab-7017-9046">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Throwing, S. Range</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="e7b9-73e9-b257-e37c" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Throwing" id="aa11-83b3-4a7f-9d9a" hidden="false" type="rule" targetId="aa4f-6809-a4af-ae4c"/>
            <infoLink name="Short Range" id="9fff-0c88-5fcb-5072" hidden="false" type="rule" targetId="a4fb-dcd8-6ec1-c779"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shotgun" hidden="false" id="39be-94b5-0a3c-088a">
          <profiles>
            <profile name="Shotgun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="f388-b42d-9e63-4d02">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood, 1 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">M. Range, Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="d139-54eb-429f-40a6" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="a36e-c02f-07f6-b54e" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Medium Range" id="7aee-72d9-39b4-56c2" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Sawed-off Shotgun" hidden="false" id="baa7-4f17-c330-127b">
          <profiles>
            <profile name="Sawed-off Shotgun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="b0f5-3420-f0ce-b2a2">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">2 Blood, 1 Blood + 1 Stun, 2 Stun</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">1</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, Expansive</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="4370-ae88-490a-91ca" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="4f3d-676b-1eda-4161" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Expansive" id="12ac-7829-a300-c15f" hidden="false" type="rule" targetId="858c-f744-3397-15c8"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Syringe Claw" hidden="false" id="ce0a-2f64-f41d-b3e7">
          <profiles>
            <profile name="Syringe Claw" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="f189-afcb-4ef0-12ec">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Handy, Pinned Down, CRT (Poison)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="9135-9973-17fb-f94d" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <rules>
            <rule name="CRT (Poison)" id="34e7-c7a5-e32f-ef2d" hidden="false">
              <description>In case of a critical hit, this weapon causes the Poison effect for the targeted model.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink name="Handy" id="c32c-b017-25a8-4310" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Pinned down" id="0e7c-54c0-0bd3-1c9b" hidden="false" type="rule" targetId="82a3-5e38-83e3-0889"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Crane&apos;s Drug Spray" hidden="false" id="e8c9-a9df-cdf4-903b">
          <profiles>
            <profile name="Crane&apos;s Drug Spray" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="41cf-018a-533d-202d">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">-</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">1</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Expansive, Poison, Enervating (2)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="8b1f-4517-a8d8-6d44" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Expansive" id="b66d-b9d1-5aef-073e" hidden="false" type="rule" targetId="858c-f744-3397-15c8"/>
            <infoLink name="Poison" id="58b8-4619-0e02-5c9c" hidden="false" type="rule" targetId="b728-9cd2-f41d-d684"/>
            <infoLink name="Enervating (X)" id="11ea-d846-238a-4fb2" hidden="false" type="rule" targetId="4b56-62b6-ddcd-6880"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Combined Sniper Guns MKII" hidden="false" id="207c-178b-5d51-59ba">
          <profiles>
            <profile name="Combined Sniper Guns MKII" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="00b2-e0a4-332a-4313">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, Aim, Scope, M. Range</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="99d8-e9c1-a92a-4c8e" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="7b40-97f1-6b98-0d2c" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Medium Range" id="386a-58a7-c388-70f2" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Aim" id="a9be-8eca-d3bb-7462" hidden="false" type="rule" targetId="b6cb-5f72-635b-9d94"/>
            <infoLink name="Scope" id="0598-bc79-ea8d-902e" hidden="false" type="rule" targetId="e1ee-b548-15a7-7f62"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Vulcan M-61" hidden="false" id="b484-50e6-32cb-0fee">
          <profiles>
            <profile name="Vulcan M-61" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="e55e-f7a4-a4ce-4602">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">4</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm, M. Range, Imprecise, Anti-Tank</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="8978-5f65-97a3-b599" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Medium Range" id="fd4b-9ad1-3e30-11f5" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Firearm" id="f568-3c70-0661-a9d2" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
            <infoLink name="Imprecise" id="fc7e-cfff-e875-a3e3" hidden="false" type="rule" targetId="44cf-a756-5140-051a"/>
            <infoLink name="Anti-Tank" id="d4f1-f06b-d355-cc6f" hidden="false" type="rule" targetId="5db8-f31a-eafb-c0b4"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Assault Rifle" hidden="false" id="6569-ae67-aeb2-077e">
          <profiles>
            <profile name="Assault Rifle" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="d85e-abd3-ecdc-4778">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">3</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">2</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Firearm</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="fcfc-4359-635d-ad3c" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Firearm" id="5653-65c3-a687-4694" hidden="false" type="rule" targetId="1ae1-d6b6-c05d-2529"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Knife" hidden="false" id="6337-4f7a-b0a2-b0d5">
          <profiles>
            <profile name="Knife" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="d8fe-af5c-0572-5353">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Sharp</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="bc40-6ae9-607b-33d3" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Sharp" id="5b7e-f0d2-dbfd-0789" hidden="false" type="rule" targetId="cec6-3659-861c-d862"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Blastgun" hidden="false" id="35ae-3ce6-e5ee-e274">
          <profiles>
            <profile name="Blastgun" typeId="b013-c352-bbf7-acfa" typeName="Ranged Weapon" hidden="false" id="163d-e41e-d458-4f2c">
              <characteristics>
                <characteristic name="Damage" typeId="3402-b871-7b53-7064">3 Blood</characteristic>
                <characteristic name="ROF" typeId="35c1-c8d6-1c79-eee3">2</characteristic>
                <characteristic name="Ammo" typeId="4275-3182-fcf5-8a8c">3</characteristic>
                <characteristic name="Weapon Traits" typeId="d571-2ae9-4a98-8baf">Beam, M. Range, Reload</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="e5df-fb90-85ea-a151" id="a909-9ffe-f589-6b9e" primary="false" name="Ranged Weapon"/>
          </categoryLinks>
          <infoLinks>
            <infoLink name="Beam" id="0743-f6c6-f6d0-c669" hidden="false" type="rule" targetId="02b5-671c-bc5e-9da3"/>
            <infoLink name="Medium Range" id="9c75-bbed-5121-5d76" hidden="false" type="rule" targetId="e5eb-db8b-df9b-c087"/>
            <infoLink name="Reload" id="5202-3ce9-da5d-84df" hidden="false" type="rule" targetId="f2fc-7249-231f-b5cb"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Heavy Electric Baton" hidden="false" id="bd2f-c175-007c-f791">
          <profiles>
            <profile name="Heavy Electric Baton" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="8d94-2aaf-b912-da05">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">2 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Mechanical, Handy, CRT (Stunned)</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink targetId="f863-9de5-8630-bf4a" id="f9ff-f687-c63e-cf89" primary="false" name="CC Weapon"/>
          </categoryLinks>
          <rules>
            <rule name="CRT (Stunned)" id="6548-2600-fd04-40e5" hidden="false">
              <description>In case of a critical hit, this weapon causes 1 Blood damage.</description>
            </rule>
          </rules>
          <infoLinks>
            <infoLink name="Mechanical" id="d449-2b2e-04c9-38db" hidden="false" type="rule" targetId="b076-9a28-b71d-22a2"/>
            <infoLink name="Handy" id="8b90-0dc7-abe6-b91c" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Claws &amp; Teeth" hidden="false" id="6710-0eaf-64fe-d7bf">
          <profiles>
            <profile name="Claws &amp; Teeth" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="bab6-3877-43d9-a3f4">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Devastating</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <infoLinks>
            <infoLink name="Devastating" id="d5e6-b838-c790-87ff" hidden="false" type="rule" targetId="7785-af6b-1917-71cf"/>
          </infoLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Teeth &amp; Claws" hidden="false" id="5078-2faa-07f2-d0ff">
          <profiles>
            <profile name="Teeth &amp; Claws" typeId="8753-fb9c-9080-5b6d" typeName="CC Weapon" hidden="false" id="d5d9-c77f-da1d-de62">
              <characteristics>
                <characteristic name="Damage" typeId="b6ca-2a6b-06bb-8095">1 Blood, 1 Stun</characteristic>
                <characteristic name="Weapon Traits" typeId="2afb-1ec3-9d1e-cf96">Reach, Handy, Protective</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <infoLinks>
            <infoLink name="Reach (X)" id="c5cd-6c05-5bfc-120f" hidden="false" type="rule" targetId="b8bc-b583-55db-049c"/>
            <infoLink name="Handy" id="eeb1-ea58-b787-3f01" hidden="false" type="rule" targetId="b891-4c26-32c8-2364"/>
            <infoLink name="Protective" id="c527-bbd9-16fe-f45f" hidden="false" type="rule" targetId="4e8e-6ac9-8497-579b"/>
          </infoLinks>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
  </sharedSelectionEntries>
  <costTypes>
    <costType name=" Dollar" id="b5b3-aa8b-4d9c-5673" defaultCostLimit="-1"/>
    <costType name="Reputation" id="99c9-f5c8-7271-b9c6" defaultCostLimit="-1"/>
  </costTypes>
  <profileTypes>
    <profileType name="Identifier" id="9d0f-e155-f058-1c47" hidden="false">
      <characteristicTypes>
        <characteristicType name="Name" id="1ef1-a21d-012a-e008"/>
        <characteristicType name="Alias" id="324e-541d-263d-736b"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Statistics" id="6ba8-3e9b-e9ec-4fc1" hidden="false">
      <characteristicTypes>
        <characteristicType name="Willpoints" id="72c9-ec3f-8c3e-6edf"/>
        <characteristicType name="Strength" id="b7df-0e7d-5dd4-1a2f"/>
        <characteristicType name="Movement" id="926c-cb61-0860-4a75"/>
        <characteristicType name="Attack" id="dd2a-10f4-717a-4bc1"/>
        <characteristicType name="Defense" id="772d-9054-3e95-2611"/>
        <characteristicType name="Special" id="332e-5255-7c9b-115f"/>
        <characteristicType name="Endurance" id="b01b-8d00-8a94-dfe8"/>
        <characteristicType name="Traits" id="072b-9b59-7b27-0de0"/>
      </characteristicTypes>
    </profileType>
    <profileType name="CC Weapon" id="8753-fb9c-9080-5b6d" hidden="false">
      <characteristicTypes>
        <characteristicType name="Damage" id="b6ca-2a6b-06bb-8095"/>
        <characteristicType name="Weapon Traits" id="2afb-1ec3-9d1e-cf96"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="b013-c352-bbf7-acfa" hidden="false">
      <characteristicTypes>
        <characteristicType name="Damage" id="3402-b871-7b53-7064"/>
        <characteristicType name="ROF" id="35c1-c8d6-1c79-eee3"/>
        <characteristicType name="Ammo" id="4275-3182-fcf5-8a8c"/>
        <characteristicType name="Weapon Traits" id="d571-2ae9-4a98-8baf"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Equipment" id="0941-0f5b-a95b-5c38" hidden="false">
      <characteristicTypes>
        <characteristicType name="Rules" id="dadd-d641-527c-1d93"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Character Upgrade" id="c67d-695d-6a54-1b0f" hidden="false">
      <characteristicTypes>
        <characteristicType name="Upgraded Character" id="b514-1c96-4f58-694d"/>
        <characteristicType name="Alias" id="b831-e12b-268f-f459"/>
        <characteristicType name="Movement" id="523a-d3f9-1dcd-9857"/>
        <characteristicType name="Endurance" id="22db-2198-71de-7a57"/>
        <characteristicType name="Upgrade Traits" id="7c53-1136-d648-2c7e"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <rules>
    <rule name="Throwing" id="aa4f-6809-a4af-ae4c" hidden="false">
      <description>This weapon always uses its full Rate of Fire, even if the wielder has moved.</description>
    </rule>
    <rule name="Accurate" id="b12c-acb7-8423-bfb7" hidden="false">
      <description>The targets of an attack made by this weapon suffer a -1 penalty to Movement Basic skill when using the Dodging Ranged Attacks rule against it.</description>
    </rule>
    <rule name="Acid" id="524d-ab5a-b390-e887" hidden="false">
      <description>When this weapon damages a target, that model reduces its Attacks and Defense by 1 until the end of the round (this effect does not stack if the weapon or another weapon with the same rule damages the target several times). In addition, these weapons ignore the Light Armor trait.</description>
    </rule>
    <rule name="Aim" id="b6cb-5f72-635b-9d94" hidden="false">
      <description>The wielder of this weapon will not be able to move if he will use it during its activation.</description>
    </rule>
    <rule name="Anti-Tank" id="5db8-f31a-eafb-c0b4" hidden="false">
      <description>This weapon ignores the penalty to Damage rolls of Light, Medium and Heavy Armor traits, and may re-roll failed Damage rolls against models with those traits. Furthermore, Anti-Tank weapons ignore the Bulletproof Vest, Hardened and Kevlar Vest traits.</description>
    </rule>
    <rule name="Assault (X)" id="8c32-0cf1-2cdb-607f" hidden="false">
      <description>If the wielder moves during its activation before firing this weapon, the weapon’s RoF will be X, no matter what the original RoF was.</description>
      <alias>Assault (2)</alias>
      <alias>Assault (3)</alias>
      <alias>Assault (4)</alias>
      <alias>Assault (5)</alias>
    </rule>
    <rule name="Beam" id="02b5-671c-bc5e-9da3" hidden="false">
      <description>All hits from this weapon inflict Damage on a result of 2+. Ignore the wielder’s Strength for the Damage roll. In addition, the target of this weapon suffers a -2 penalty on their Ping! rolls. Beam weapons cannot receive an Ammo Magazine from an Ammo Crate or SWAT Van.</description>
    </rule>
    <rule name="Bleed (X)" id="d661-299f-a4fb-9a80" hidden="false">
      <alias>Bleed (1)</alias>
      <alias>Bleed (2)</alias>
      <alias>Bleed (3)</alias>
      <description>If you score a Critical Damage with this weapon, instead of the normal Critical Damage, the target suffers X damage (1 Blood).</description>
    </rule>
    <rule name="Blunt (X)" id="f254-0c33-a92c-9f69" hidden="false">
      <alias>Blunt (1)</alias>
      <alias>Blunt (2)</alias>
      <alias>Blunt (3)</alias>
      <description>If you score a Critical Damage with this weapon, instead of the normal Critical Damage, the target suffers X damage (1 Stun).</description>
    </rule>
    <rule name="Caustic" id="6f40-ce3d-f6c7-5376" hidden="false">
      <description>Even when this weapon fails to damage, the target takes (1 Blood) Damage. This damage replaces that produced by the rule Just a Scratch!</description>
    </rule>
    <rule name="Cold" id="626b-32ae-7525-5031" hidden="false">
      <description>When this weapon hits, the target model loses up to 1MC.</description>
    </rule>
    <rule name="Crushing" id="0570-47ea-c898-e829" hidden="false">
      <description>Each strike from these weapons requires the target to make two successful Blocks to defend against it.</description>
    </rule>
    <rule name="Defensive" id="714f-82cf-5d4a-d881" hidden="false">
      <description>A model carrying this weapon can reroll failed Block rolls. This is a passive ability, and may be used even if the model used a different weapon during its activation.</description>
    </rule>
    <rule name="Devastating" id="7785-af6b-1917-71cf" hidden="false">
      <description>Attacks with this weapon roll two Collateral Damage dice. You must apply both results.</description>
    </rule>
    <rule name="Electric" id="1fdb-143c-e420-5663" hidden="false">
      <description>This weapon has CRT: Stunned, and can reroll failed Damage rolls against targets with the Bot, Cybernetic or Robot traits.</description>
    </rule>
    <rule name="Expansive" id="858c-f744-3397-15c8" hidden="false">
      <description>Instead of having a Rate of Fire, this weapon uses the Spray Template to determine how many models are hit (see Templates, below).</description>
    </rule>
    <rule name="Explosion Template" id="ace3-75c7-b87a-bd6c" hidden="false">
      <description>When an attack or weapon uses an Explosion template, the attacker must roll to hit the initial target as usual. If successful, center the Explosion template over the target, unless otherwise specified in the weapon’s special rules. 
If fails or the hit becomes ignored the explosion template is not placed and the attack is lost.
All models totally or partially under the template (friend and foe) will receive one automatic hit (with no further Ping! rolls allowed). Make a Damage roll for each model. Affected models may suffer additional effects depending on the exact weapon used (for example, CRT: Freeze).
Players should consider that explosive templates do not pass through solid objects like walls – don’t worry about the small obstacles, but certainly consider things like building, tall advertising hoardings, huge shipping crates etc).</description>
    </rule>
    <rule name="Explosive" id="7725-e61b-297c-558b" hidden="false">
      <description>When this kind of weapon hits, place the Explosion Template over the impact point (usually the target model). See Templates, below.</description>
    </rule>
    <rule name="Firearm" id="1ae1-d6b6-c05d-2529" hidden="false">
      <description>All hits from these weapons inflict Damage on a result of 2+, regardless of the wielder’s Strength.</description>
    </rule>
    <rule name="Gas" id="7717-0711-f894-543a" hidden="false">
      <description>This weapon ignores the Just a Scratch and Ping! rules. Characters in the ‘blank’ area of a Spray Template are considered to be in the ‘lethal’ area.</description>
    </rule>
    <rule name="Grenade" id="6b3e-875d-4e60-676b" hidden="false">
      <alias>These weapons use their own special rules:</alias>
      <alias>Weapons with the ‘Grenade’ type (i.e. Freeze Grenades) are used just like other ranged weapons for the purposes of line of sight and Ping!</alias>
      <alias>However, when a model throws a grenade, it may target any point on the table within range and line of sight, not just a model. Roll a D6 – on a score of 3+, center the Explosion template on the target point, rolling to damage and applying any effects to all models even partially beneath the template (with no further Ping! rolls allowed). If the roll to hit was a 1 or 2, then the attack fails – the grenade was a dud, or rolled away harmlessly.</alias>
    </rule>
    <rule name="Handy" id="b891-4c26-32c8-2364" hidden="false">
      <description>When using this weapon, the wielder may reroll failed Hit rolls.</description>
    </rule>
    <rule name="Heavy" id="55b2-7f90-5e2e-cddd" hidden="false">
      <description>When using this weapon the attacker gains a +1 Strength bonus.</description>
    </rule>
    <rule name="Ice Template" id="4b0a-cd61-cc6c-32cd" hidden="false">
      <description>Place an Explosion Template centered on the target. Until the end of the round, any model moving through or into contact with the template suffers Impaired Movement. 
Furthermore, each model in contact with the template during its activation must pass an Agility roll or become Knocked Down. A model must roll only once; if the roll is passed, then the model continues its activation normally. 
Models with the Speedster trait that come into contact with the template lose 1 Speed Power counter from their personal reserve.</description>
    </rule>
    <rule name="Imprecise" id="44cf-a756-5140-051a" hidden="false">
      <description>This weapon suffers a -1 penalty to Hit rolls.</description>
    </rule>
    <rule name="Kryptonite" id="01a8-fa33-24f8-5f2d" hidden="false">
      <description>If a weapon with this rule hits a model with the Kryptonian trait, that model loses the Invulnerability and Regeneration traits (if they possess them) until the end of the round.</description>
    </rule>
    <rule name="Light" id="9245-5460-d3ab-32c8" hidden="false">
      <description>A model can fire this weapon even when it is in contact with an enemy model.</description>
    </rule>
    <rule name="Magic" id="3f5e-5e02-f80e-3fda" hidden="false">
      <description>If a weapon with this rule hits a model with the Invulnerability, Incorporeal and Tough Skin traits, that model loses those traits (if they possess them) until the end of the round.</description>
    </rule>
    <rule name="Mechanical" id="b076-9a28-b71d-22a2" hidden="false">
      <description>All hits from these weapons inflict Damage on a result of 3+, regardless of the wielder’s Strength.</description>
    </rule>
    <rule name="Medium Range" id="e5eb-db8b-df9b-c087" hidden="false">
      <description>Unlike most ranged weapons, the maximum range of these weapons is not unlimited. They may never fire more than 16”, even if the wielder can see a target further away than that.</description>
      <alias>M. Range</alias>
    </rule>
    <rule name="One-Use" id="8e5b-05c0-1432-375d" hidden="false">
      <description>The target of an attack made by this weapon suffers -1 to dice rolls when blocking.</description>
    </rule>
    <rule name="Overwhelming" id="6203-dc22-5a8b-d6dd" hidden="false">
      <description>The target of an attack made by this weapon suffers -1 to dice rolls when blocking.</description>
    </rule>
    <rule name="Protective" id="4e8e-6ac9-8497-579b" hidden="false">
      <description>These weapons award a +1 bonus to the wielder’s Block rolls. Furthermore, the wielder benefits from an extra Ping! roll after normal Ping! rolls have been made. This is a passive ability, and may be used even if the model used a different weapon during its activation. Once per round a friendly model in contact can benefit from the extra Ping! Roll too.</description>
    </rule>
    <rule name="Reach (X)" id="b8bc-b583-55db-049c" hidden="false">
      <description>These weapons do not require the wielder to be in contact with an enemy model in order to perform a Close Combat Attack against it. Instead, the wielder may strike a model in line of sight up to 2” away (in case no value is given) or X&quot; away (in case X is given).</description>
      <alias>Reach</alias>
      <alias>Reach (1)</alias>
      <alias>Reach (2)</alias>
      <alias>Reach (3)</alias>
    </rule>
    <rule name="Red Dot" id="679c-b7bb-f4a4-41c4" hidden="false">
      <description>Weapons with this special rule can reroll up to 1 failed Hit roll when performing a ranged attack.</description>
    </rule>
    <rule name="Reload" id="f2fc-7249-231f-b5cb" hidden="false">
      <description>Weapons with this special rule cannot be used in 2 consecutive rounds. In order to reload the weapon, the wielder must spend at least one round in which it does not declare any ranged attacks with this weapon. If the model has more than one weapon that required reloading, it may only reload one per round spent reloading – declare which weapon is being reloaded during the activation. These weapons cannot be reloaded while a model is KO.</description>
    </rule>
    <rule name="Remote Controlled" id="278a-8fd4-b5a6-2874" hidden="false">
      <description>When using these weapons, the model needs to be able to see the target as usual, but does not need to draw a straight uninterrupted line to it. Instead, measure range from the firer’s volume to the target, carefully measuring around obstacles. The weapon’s maximum range cannot be exceeded in order to reach the target. Targets of Remote Controlled weapons cannot benefit from Ping! rolls against these attacks.</description>
    </rule>
    <rule name="Scope" id="e1ee-b548-15a7-7f62" hidden="false">
      <description>While performing a ranged attack with this weapon, the firer can see at any distance, limited only by their line of sight. Targets of this weapon cannot benefit from Ping! rolls against it.</description>
    </rule>
    <rule name="Sharp" id="cec6-3659-861c-d862" hidden="false">
      <description>When using these weapons, the wielder may reroll failed Damage rolls.</description>
    </rule>
    <rule name="Short Range" id="a4fb-dcd8-6ec1-c779" hidden="false">
      <description>Unlike most ranged weapons, the maximum range of these weapons is not unlimited. They may never fire more than 8”, even if the wielder can see a target further away than that.</description>
      <alias>S. Range</alias>
    </rule>
    <rule name="Silencer" id="93f9-7d2c-76f6-28fe" hidden="false">
      <description>The target of an attack made by this weapon cannot use the Dodging Ranged Attacks rule against it.</description>
    </rule>
    <rule name="Sonic" id="6a2f-8041-7c04-04f0" hidden="false">
      <description>When this weapon hits, the target model loses up to 1SC.</description>
    </rule>
    <rule name="Spray Template" id="84c4-c184-d66e-6f5d" hidden="false">
      <description>If a weapon requires the use of a spray template, the controlling player must place the narrow end of the template in contact with the base of the firing model, and direct the other end in any direction they wish. 
To affect a model with this template, the attacker must be able to trace Line of Sight to the affected model, although cover is ignored. 


All models totally or partially under the template (friend and foe) receive one automatic hit (with no Ping! rolls allowed) – make a Damage roll for each model. 
Affected models may suffer additional effects depending on the exact weapon used (for example, CRT: Freeze). 
However, the affected models may suffer different Damage and effects depending on its position within the template, as follows.


The Spray template has four range-bands marked upon it: One is blank, the others are Lethal, Serious and Mild. The blank area closest to the shooter indicates that no damage is done to models within the area. The Damage done to models within other areas will be noted in the weapon’s rules. A model between two damage bands always counts as standing in the narrowest area.


A weapon with the Expansive rule that has only a single Damage icon on its profile applies this Damage to all zones on the Expansive template.</description>
    </rule>
    <rule name="Template" id="1108-df5c-4495-2b14" hidden="false">
      <description>When a template is used, it affects any model whose volume it interacts with – depending on how your tabletop scenery is arranged, this means that sometimes models on different levels of the board (on stairs, walkways, or rooftops, etc.) may be affected by a template on another level. Templates are considered to extend 2” above and below the point of impact.</description>
    </rule>
    <rule name="Toxic (X)" id="fcdd-240e-fa88-2545" hidden="false">
      <description>The target receives a number of Blood Damage markers equal to ‘X’.</description>
    </rule>
    <rule name="Blind" id="dc00-9cc9-1e60-df0f" hidden="false">
      <description>A model suffering from Blind cannot see (i.e. draw line of sight), and cannot perform ranged attacks. All of the model’s Hit and Block rolls will only succeed on a natural result of 6. In addition, the model cannot spend MC. This effect lasts until the end of the round.</description>
    </rule>
    <rule name="Casualty" id="2d85-6929-123d-2414" hidden="false">
      <description>If this effect is triggered (usually as part of a Critical effect, i.e. CRT: Casualty), then the target model is removed from play as though it had received its maximum allocation of Injury markers.</description>
    </rule>
    <rule name="Cooled" id="fad7-20aa-27e8-15bb" hidden="false">
      <description>Place a Cooled marker on the Character Card of the affected model. A cooled model reduces its Defense skill by -1, and cannot spend Action Counters of any kind, for any reason, until the end of its next activation. Speedsters cannot use Speed Force Powers if they are affected by the Cooled effect.</description>
    </rule>
    <rule name="Enervating (X)" id="4b56-62b6-ddcd-6880" hidden="false">
      <alias>Enervating (1)</alias>
      <alias>Enervating (2)</alias>
      <alias>Enervating (3)</alias>
      <alias>Enervating (4)</alias>
      <description>The target loses up to ‘X’ Action Counters.</description>
    </rule>
    <rule name="Fire" id="8a5d-4863-ee83-f9d5" hidden="false">
      <description>If a Model is affected by Fire, place a Fire marker on its Character Card. At the start of the Recount phase, models with at least one Fire marker receive 1 Blood for each Fire marker they have, and add 1 more Fire marker. A model may spend one Movement Counter at any time to remove one Fire marker.</description>
    </rule>
    <rule name="Flash" id="ac99-6288-0b5c-51bd" hidden="false">
      <description>A model suffering from Flash cannot see (i.e. draw line of sight), and cannot perform ranged attacks. All of the model’s Hit and Block rolls suffer a -2 penalty. This effect lasts until the end of the round.</description>
    </rule>
    <rule name="Freeze" id="53e8-0e8e-05f3-9dac" hidden="false">
      <description>Place a Freeze marker on the Character Card of the affected model. The model reduces its Defense skill by -1, and cannot spend Action Counters of any kind, for any reason. At the beginning of the model’s activation, it must pass an Endurance roll to remove the Freeze effect. 
Speedsters cannot use Speed Force Powers if they are affected by the Freeze effect.</description>
    </rule>
    <rule name="Hypnotize" id="adb0-5522-28f5-b19a" hidden="false">
      <description>Any non-vehicle model affected by Hypnotize must make a Willpower roll immediately. If it fails, it becomes completely under the control of the player who hypnotized it, counting as one of that player’s crew in all respects, until the end of the target’s next activation. Models that are Hypnotized cannot be moved so they would Fall, nor can they enter sewers.</description>
    </rule>
    <rule name="Knocked Down" id="1172-3915-cbd4-08b2" hidden="false">
      <description>Place a Knocked Down marker on the Character Card of the affected model. A Knocked Down model cannot attack, or defend itself, and it cannot use any traits with an activation cost until it stands up again. A model may move while Knocked Down, but this movement will be Impaired. A Knocked Down model will always be hit by close combat attacks on a roll of 2+. A Knocked Down model doesn’t grant Ping! rolls when a shot passes through or over it, however.</description>
    </rule>
    <rule name="Paralyze" id="003b-709b-96cc-058e" hidden="false">
      <description>Place a Paralyze marker on the card of the affected model. A paralyzed model reduces its Defense skill by -2, and cannot spend Action Counters of any kind, for any reason, until the end of the round.</description>
    </rule>
    <rule name="Poison" id="b728-9cd2-f41d-d684" hidden="false">
      <description>If a non-vehicle model is affected by Poison, place a Poison marker on its Character Card. At the beginning of its next activation, the poisoned model must make an Endurance roll. 
If the roll succeeds, remove the Poison marker. This will continue in each round until the roll is passed. Make one roll for each Poison Marker the model has. 
A model may be affected by more than one Poison Marker at the same time. At the beginning of the Recount phase the affected model suffers 1 Blood Damage marker for each Poison marker it has.</description>
    </rule>
    <rule name="Scared" id="53a6-7e4a-6816-b3c1" hidden="false">
      <description>The affected non-vehicle model cannot Crouch or use the Dodging Ranged Attacks rule, and suffers a -1 penalty to its Hit rolls (close combat and ranged) and Block rolls. This effect lasts until the end of the round.</description>
    </rule>
    <rule name="Smoke" id="af3c-653e-29cd-24b8" hidden="false">
      <description>Place an Explosion template in the location of the Smoke cloud. Models cannot draw line of sight through the template. Models even partially within the template suffer the Blind effect. The Smoke dissipates at the end of the 
round – remove the template automatically. 
Weapons with the Smoke rule cannot be canceled. Unlike other templates, a smoke template is of infinite height.</description>
    </rule>
    <rule name="Steal" id="08ca-7103-d954-07ec" hidden="false">
      <description>A model triggering this effect may attempt to steal a weapon from another non-vehicle model (if the target model carries more than one weapon, choose randomly which one is stolen, either by rolling a die or flipping a coin). From that moment on, the model will be able to use that weapon in addition to its usual armament (with whatever Ammunition it had left at the time of the theft). A stolen weapon cannot be used by its previous owner (unless it gets it back). 
A model may only carry a single stolen weapon at a time, but it may try to steal different weapons in subsequent turns. If a model steals more than one weapon, it must choose which one of them it would like to keep, and discard 
the other (discarded weapons are lost, and will no longer be available to use by any model for the rest of the game).</description>
    </rule>
    <rule name="Stunned" id="9d15-2818-78dc-56ef" hidden="false">
      <description>A Stunned model cannot spend Action Counters until the end of the round, when the effect is removed.</description>
    </rule>
    <rule name="Terror (X)" id="e21e-ed4c-49b1-9630" hidden="false">
      <alias>Terror (1)</alias>
      <alias>Terror (2)</alias>
      <alias>Terror (3)</alias>
      <alias>Terror (4)</alias>
      <alias>Terror (5)</alias>
      <description>When a non-vehicle model is affected by Terror, it loses up to ‘X’ Action Counters. For the entirety of the following round, their Willpower is reduced by ‘X’ points, this penalty does not stack, the highest value suffered is applied.</description>
    </rule>
    <rule name="Push" id="aeee-63a5-857c-8643" hidden="false">
      <description>The target is pushed directly away from the attacker a number of inches equal to half the result of the Collateral Damage die, to a minimum of 1”. 
If the target can’t be pushed, (because a scenery element or model is in the way) it will immediately suffer a hit with Strength 4+ and Damage (1 Stund). If the target model is pushed from the edge of a piece of scenery so that it can only be placed on a lower level, the model will fall.


A vehicle model can only be pushed in close combat by Large or Huge models.


A Large model can only be pushed in close combat by Large or Huge models.


A Huge model can only be pushed in close combat by Huge models.


A model cannot be pushed off the edge of the gaming area – treat the edge of the board as an impassable obstacle.</description>
    </rule>
    <rule name="Pinned down" id="82a3-5e38-83e3-0889" hidden="false">
      <description>A Pinned Down model cannot move or spend MC, and its Attack value is reduced by -1 until the status is cancelled. This does not remove any assigned AC – it simply lowers the Attack score by 1.</description>
    </rule>
    <rule name="360° Attack (1SC+1AC)" id="9e47-753a-7004-a991" hidden="false">
      <alias>360° Attack</alias>
      <description>1SC+1AC: The model performs a single, free strike against each model in range (friend and foe). This special attack doesn’t count as an attack action. A model can use this rule once per round.</description>
    </rule>
    <rule name="Charge (1MC+1SC)" id="f69c-c4e5-6fb8-dd9e" hidden="false">
      <alias>Charge</alias>
      <description>1MC+1SC: This special attack must be activated before the models moves during its activation. This model, during its Movement Action, must move in a 
straight line, it can move through other models whose bases of equal size or smaller than its own, but cannot end its move on another model. During this movement all models who have enter in contact with this model receives an automatic hit in close combat (this hit can be blocked) with the strength value of this model and Damage (2 Stun). At the end of the Movement Action, this model can attack normally.</description>
    </rule>
    <rule name="Deadly Strike (1SC)" id="b75b-e01d-5713-aa88" hidden="false">
      <alias>Deadly Strike</alias>
      <description>Once this trait is activated, for the rest of the round this model gains CRT: Casualty on all its Close Combats Attack Actions.</description>
    </rule>
    <rule name="Devastating Blow (1SC)" id="852e-46c4-9edf-6f3f" hidden="false">
      <alias>Devastating Blow</alias>
      <description>1SC: Once this trait is activated, for the rest of the round this model gains a +1 Strength bonus and CRT: (1 Blood) on all its Close Combats Attack Actions.</description>
    </rule>
    <rule name="Electric Storm (3SC)" id="ba07-a631-b529-f2db" hidden="false">
      <alias>Electric Storm</alias>
      <description>3SC: When using this Special Attack, center the Explosion Template on the attacking model. All models partially or totally under the template (except the attacking model himself) receive one hit with a Strength of 3+ and Damage (2 Stun). This model may attack normally before and/or after this Special Attack.</description>
    </rule>
    <rule name="Flaming Wave (3SC)" id="4c7d-bca1-e9c3-7df3" hidden="false">
      <alias>Flaming Wave</alias>
      <description>3SC: When using this Special Attack, center the Explosion template on this model. All models partially or totally under the template (except this model) receive one hit with a Strength of 3+ and Damage (1 Blood), plus 1 Fire effect marker. 
This model can only use Flaming Wave once per activation, and may attack normally before and/or after this Special Attack. 
This model receives damage (1 Stun) after using this Special Trait.</description>
    </rule>
    <rule name="Lethal Blow (1SC)" id="c0ad-0137-69db-b426" hidden="false">
      <alias>Lethal Blow</alias>
      <description>1SC: Once this trait is activated, for the rest of the round when this model damages a non-vehicle enemy model in a Close Combat Attack Action, the damaged model suffers the Stunned effect too.</description>
    </rule>
    <rule name="Power Strike (1SC)" id="91bc-b977-76f9-9bca" hidden="false">
      <alias>Power Strike</alias>
      <description>1SC: Once this trait is activated, for the rest of the round when this model damages a non-vehicle enemy model in a Close Combat Attack Action, the damaged model suffers the Knocked Down effect too.</description>
    </rule>
    <rule name="Precise Blow (1SC)" id="49c0-8d44-51bf-c18e" hidden="false">
      <description>1SC: Once this trait is activated, for the rest of the round this model gains +1 bonus on the Hit roll, and may reroll the Collateral Damage die.</description>
      <alias>Precise Blow</alias>
    </rule>
    <rule name="Sneak Attack (1SC)" id="19cb-75c5-25f7-dcc9" hidden="false">
      <alias>Sneak Attack</alias>
      <description>1SC: This trait may only be performed if, at the beginning of the attacker’s activation, the target could not see the attacker. The target model cannot Block strikes from this model during this activation.</description>
    </rule>
    <rule name="Technique (1SC)" id="66c4-ec53-de28-e8c6" hidden="false">
      <alias>Technique</alias>
      <description>1SC: Once this trait is activated, for the rest of the round when this model damages a non-vehicle enemy model in a Close Combat Attack Action, the damaged model suffers the Paralyze effect too.</description>
    </rule>
    <rule name="Thief (1SC)" id="bbf0-b7eb-da4d-436a" hidden="false">
      <alias>Thief</alias>
      <description>1SC: Once this trait is activated, for the rest of the round this models close combat attacks gains CRT: Steal.</description>
    </rule>
    <rule name="Mechanical Mount" id="0d96-9d18-448d-f3ee" hidden="false">
      <description>This model can neither jump or climb.</description>
    </rule>
  </rules>
</gameSystem>
